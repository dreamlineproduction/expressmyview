import AgoraRTC from "agora-rtc-sdk-ng";
import AgoraRTM from 'agora-rtm-sdk';
import { createStore } from 'redux';
import audience from './audience';
import devices from './devices';
import connectedViewers from './connectedViewers';

$(function(){
  console.log(
    'agora sdk version: ' +
      AgoraRTC.VERSION +
      ' compatible: ' +
      AgoraRTC.checkSystemRequirements()
  );

  let volumeLevelTimers = {};
  let abruptClose = null;

  const hostvideoDiv = $('#external-broadcasts-container');
  const spinnerDiv = $('#spinner');
  spinnerDiv.show();
  const posterimage = $('#posterimage');
  posterimage.height(480).show()
  posterimage.css({
    'background-image': 'url('+thumbnailurl+')',
    'background-position': 'center',
    'background-repeat': 'no-repeat',
    'background-size': 'cover',
  });
  $('#statusScreen').show();
  $('#statusScreen span').html('Host has not joined yet or left the broadcast.');

  const audienceStore = createStore(audience);
  audienceStore.subscribe(() => {
    const audienceState = audienceStore.getState();
    $('#connectionState').html(audienceState.connectionState);
  });

  const viewersStore = createStore(connectedViewers);
  viewersStore.subscribe(() => {
    const viewersState = viewersStore.getState();
    console.log(viewersState);
    $('#liveviewerscount').html(viewersState.viewersCount);
    if (!viewersState.hostConnected ) {
      posterimage.show();
      $('#statusScreen').show()
      $('#statusScreen span').html('Host got disconnected or left the broadcast');
      spinnerDiv.show()
    }
    if (viewersState.numVideoTracks === 0 && viewersState.noOfHosts > 0) {
      posterimage.show();
      $('#statusScreen').show()
      $('#statusScreen span').html('Host is not broadcasting any video stream');
      spinnerDiv.show()
    }
    if (viewersState.numVideoTracks > 0 && viewersState.noOfHosts > 0) {
      posterimage.hide();
      $('#statusScreen').hide()
      spinnerDiv.hide()
    }
  });

  // Level: 1: INFO, 0: DEBUG, 4: NONE, 2: WARNING, 3: ERROR
  if (APP_DEBUG) {
    window.AgoraRTC = AgoraRTC;
    AgoraRTC.setLogLevel(0);
  } else {
    AgoraRTC.setLogLevel(2);
  }

  var token = servertoken;
  var tokenrtm = servertokenrtm;

  var bclient = {
    // For the local client.
    client: null,
    // For the local audio and video tracks.
    localAudioTrack: null,
    localVideoTrack: null,
    hosts: null,
  };

  $('#golive-btn').prop('disabled', true);
  $('#exit-btn').prop('disabled', true);

  var options = {
    appId: AGORA_APP_ID,
    channel: channelname,
    token: token,
    role: 'audience',
  }

  // let isAudioAutoplayFailed = false;
  // AgoraRTC.onAudioAutoplayFailed = () => {
  //   if (isAudioAutoplayFailed) return;
  //
  //   isAudioAutoplayFailed = true;
  //   const btndiv = document.createElement("button");
  //   btndiv.id = 'click-to-hear';
  //   btndiv.innerText = "Click to hear";
  //   btndiv.click(function() {
  //     isAudioAutoplayFailed = false;
  //     console.log(btndiv);
  //     $('#buttons-container').remove(btndiv);
  //   });
  //   $('#buttons-container').append(btndiv);
  // };

  const RTM = {
    rtmclient: null,
    loggedIn: false,
  };
  let rtmchannel;

  async function JoinChat() {
    RTM.rtmclient = AgoraRTM.createInstance(AGORA_APP_ID);
    RTM.rtmclient.on('ConnectionStateChanged', (newState, reason) => {
      console.log('on connection state changed to ' + newState + ' reason: ' + reason);
    });

    RTM.rtmclient.login({token: tokenrtm, uid: userrtm})
    .then(() => {
      RTM.loggedIn = true;
      console.log('RTM login successfull');
      rtmchannel = RTM.rtmclient.createChannel(channelname);

      rtmchannel.on('ChannelMessage', ({text}, senderId) => {
        const { msg, displayname, profilepic }  = JSON.parse(text);
        const divID = '_' + Math.random().toString(36).substr(2, 9);
        const chatDiv = $('<div>', {id: divID, class: 'media media-chat'});
        const imgDiv = $('<img>', {class: 'avatar', src: profilepic});
        chatDiv.append(imgDiv);
        const chatBody = $('<div>', {class: 'media-body'});
        const nameBody = $('<p>', {text: 'From: '+displayname});
        const textBody = $('<p>', {html: msg});
        chatBody.append(nameBody);
        chatBody.append(textBody);
        chatDiv.append(chatBody);
        chatDiv.attr('class', 'media media-chat');
        $('#chat-content').append(chatDiv);
        console.log(chatDiv);
        console.log('Message received: ',text);
      });

      rtmchannel.join()
      .then(() => {
        console.log('chat channel joining success');
      }).catch((error) => {
        console.log('Chat channel joining error: ', error);
      });

    })
    .catch((error) => {
      console.log('RTM login error: ' + error);
    });
  };

  function sendChatMessage(textmsg, emoji=false) {
    const { msg, displayname } = JSON.parse(textmsg);
    if (rtmchannel) {
      rtmchannel.sendMessage({text: textmsg})
      .then(() => {
        const divID = '_' + Math.random().toString(36).substr(2, 9);
        const chatDiv = $('<div>', {id: divID, class: 'media media-chat media-chat-reverse'});
        const chatBody = $('<div>', {class: 'media-body'});
        const nameBody = $('<p>', {text: 'From: '+displayname});
        // let textBody;
        // if (emoji) {
        //   textBody = JSON.parse(msg);
        // } else {
        //   textBody = $('<p>', {text: msg});
        // }
        const textBody = $('<p>', {html: msg});
        // chatBody.append(nameBody);
        chatBody.append(textBody);
        chatDiv.append(chatBody);
        $('#chat-content').append(chatDiv);
        if (!emoji)  $('#publisher-input').val('');
      })
      .catch((error) => { console.log(error)});
    }
  };

  $('#publisher-input').keyup((e) => {
    if (e.keyCode == 13) {
      const msg = $('#publisher-input').val();
      if (msg.length < 1) return;
      const textmsg = JSON.stringify({msg,displayname,profilepic,emoji: false});
      sendChatMessage(textmsg);
    }
  });

  $('#publisher-btn').click((e) => {
    const msg = $('#publisher-input').val();
    if (msg.length < 1) return;
    const textmsg = JSON.stringify({msg,displayname,profilepic,emoji: false});
    sendChatMessage(textmsg);
  });

  async function joinLiveStream(){

    bclient.client = AgoraRTC.createClient({mode: 'live', codec: 'vp8'});
    bclient.client.setClientRole(options.role);

    bclient.client.on('connection-state-change', (currState, prevState, reason) => {
      console.log('Connection state: '+currState);
      audienceStore.dispatch({type: 'SET_CONN_STATE', payload: { connectionState: currState }})
    });

    bclient.client.on('token-privilege-will-expire', async function() {
      await bclient.client.renewToken(options.token)
    });

    bclient.client.on('token-privilege-did-expire', async function() {
      await bclient.client.renewToken(options.token)
    });

    bclient.client.on('network-quality', (quality) => {
      // const { downlinkNetworkQuality, uplinkNetworkQuality } = quality;
      // console.log(quality);
    });

    bclient.client.on('exception', (event) => {
      console.log(event);
    });

    bclient.client.on('user-published', async (user, mediaType) => {
      try {
        await bclient.client.subscribe(user, mediaType);
        if (mediaType === 'video') {
          const { numVideoTracks } = audienceStore.getState();
          const remoteVideoTrack = user.videoTrack;
          const playerDiv = document.createElement('div');
          // playerDiv.id = numVideoTracks.toString() + '_' + user.uid.toString();
          playerDiv.id = user.uid.toString();
          $('#external-broadcasts-container').append(playerDiv);
          viewersStore.dispatch({type: 'INCREASE_VTRACK_COUNT'});
          remoteVideoTrack.play(playerDiv);
        }
        if (mediaType === 'audio') {
          const { numAudioTracks } = audienceStore.getState();
          const remoteAudioTrack = user.audioTrack;
          const audioPlayerDiv = document.createElement('div');
          // audioPlayerDiv.id = numAudioTracks.toString() + '_' + user.uid.toString() + 'audio';
          audioPlayerDiv.id = user.uid.toString() + 'audio';
          $('#external-broadcasts-container').append(audioPlayerDiv);
          viewersStore.dispatch({type: 'INCREASE_ATRACK_COUNT'});
          if (user.uid in volumeLevelTimers === false) {
            volumeLevelTimers[user.uid] = setInterval(() => {
              const volLevel = remoteAudioTrack.getVolumeLevel();
              // console.log('Volume Level of '+user.uid+': ' + volLevel);
            }, 1000);
          }
          remoteAudioTrack.play(audioPlayerDiv);
        }
      } catch(error) {
        console.log('Error in user-published:' + error);
      }
    });

    bclient.client.on('user-unpublished', (user, mediaType) => {
      if (mediaType === 'video') {
        $('#'+user.uid.toString()).remove();
        console.log('user unpulished video track: '+ user);
        viewersStore.dispatch({type: 'DECREASE_VTRACK_COUNT'});
      }
      if (mediaType === 'audio') {
        $('#'+user.uid.toString()+'audio').remove();
        console.log('user unpulished audio track: '+ user);
        viewersStore.dispatch({type: 'DECREASE_ATRACK_COUNT'});
        if (user.uid in volumeLevelTimers === true) {
          clearInterval(volumeLevelTimers[user.uid]);
          delete volumeLevelTimers[user.uid];
        }
      }
    });

    bclient.client.on('user-joined', (user) => {
      // console.log('host joined', user);
      viewersStore.dispatch({type: 'HOST_CONNECTED', payload: { hostConnected: true }});
      viewersStore.dispatch({type: 'ADD_HOST_TO_LIST', payload: {host: user}});
      viewersStore.dispatch({type: 'INCREASE_VIEWERS_COUNT'})
    });

    bclient.client.on('user-left', (user) => {
      // console.log('host left', user);
      viewersStore.dispatch({type: 'HOST_CONNECTED', payload: { hostConnected: false }});
      viewersStore.dispatch({type: 'REMOVE_HOST_FROM_LIST', payload: {hostid: user.uid}});
      viewersStore.dispatch({type: 'DECREASE_VIEWERS_COUNT'})
    });

    const uid = await bclient.client.join(options.appId, options.channel, options.token, null);
    $('#exit-btn').prop('disabled', false);
    await JoinChat();
  };

  async function leaveCall() {
    bclient.client.remoteUsers.forEach(user => {
      const playerContainer = document.getElementById(user.uid);
      playerContainer && playerContainer.remove();
    });
    await bclient.client.leave();
    rtmchannel.leave();
    RTM.rtmclient.logout();
    bclient.client = null;
    $('#golive-btn').prop('disabled', false);
  };

  joinLiveStream();

  $('#exit-btn').on('click', () => {
    leaveCall();
  });
  $('#golive-btn').on('click', () => {
    joinLiveStream();
  });

  $('.dropdown-menu.emoji-item a').on('click', (e) => {
    e.preventDefault();
    const msg = e.target;
    const msgt = $(msg).parent().html();
    const textmsg = JSON.stringify({msg: msgt,displayname,profilepic, emoji: true});
    sendChatMessage(textmsg, true);
  });

  window.addEventListener('beforeunload', abruptClose = (event) => {
    for (const timer in volumeLevelTimers) {
      clearInterval(timer);
    }
  });

});
