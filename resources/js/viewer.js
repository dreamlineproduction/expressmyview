import AgoraRTC from "agora-rtc-sdk-ng";
import AgoraRTM from 'agora-rtm-sdk';
import { createStore } from 'redux';
import audience from './audience';
import devices from './devices';

$(function(){
  console.log(
    'agora sdk version: ' +
      AgoraRTC.VERSION +
      ' compatible: ' +
      AgoraRTC.checkSystemRequirements()
  );

  const audienceStore = createStore(audience);
  audienceStore.subscribe(() => {
    const audienceState = audienceStore.getState();
    $('#connectionState').html(audienceState.connectionState);
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
        const divID = '_' + Math.random().toString(36).substr(2, 9);
        const chatDiv = $('<div>', {id: divID, class: 'media media-chat'});
        const imgDiv = $('<img>', {class: 'avatar', src: 'https://img.icons8.com/color/36/000000/administrator-male.png'});
        chatDiv.append(imgDiv);
        const chatBody = $('<div>', {class: 'media-body'});
        const textBody = $('<p>', {text: text});
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

  $('#publisher-input').keyup((e) => {
    if (e.keyCode == 13) {
      const msg = $('#publisher-input').val();
      rtmchannel.sendMessage({text: msg})
      .then(() => {
        const divID = '_' + Math.random().toString(36).substr(2, 9);
        const chatDiv = $('<div>', {id: divID, class: 'media media-chat media-chat-reverse'});
        const chatBody = $('<div>', {class: 'media-body'});
        const textBody = $('<p>', {text: msg});
        chatBody.append(textBody);
        chatDiv.append(chatBody);
        $('#chat-content').append(chatDiv);
        $('#publisher-input').val('');
      })
      .catch((error) => { console.log(error)});
    }
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
          const remoteVideoTrack = user.videoTrack;
          const playerDiv = document.createElement('div');
          playerDiv.id = user.uid.toString();
          $('#external-broadcasts-container').append(playerDiv);
          remoteVideoTrack.play(playerDiv);
        }
        if (mediaType === 'audio') {
          const remoteAudioTrack = user.audioTrack;
          const audioPlayerDiv = document.createElement('div');
          audioPlayerDiv.id = user.uid.toString() + 'audio';
          $('#external-broadcasts-container').append(audioPlayerDiv);
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
      }
      if (mediaType === 'audio') {
        $('#'+user.uid.toString()+'audio').remove();
        console.log('user unpulished audio track: '+ user);
      }
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

});
