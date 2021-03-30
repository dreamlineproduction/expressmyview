$(function(){
  try {
    console.log(cloudRecordingDetails);
    const fileList = cloudRecordingDetails.serverResponse.fileList;
    const prefix = 'https://'+bucketname+'.s3.'+regionname+'.amazonaws.com/';
    if (cloudRecordingDetails.serverResponse.fileListMode === 'json') {
      fileList.forEach((val) => {
        if (val.trackType === 'video')
        {
          const tt = new Date(val.sliceStartTime);
          const suff = tt.getUTCFullYear().toString()+
            (tt.getUTCMonth()+1).toString().padStart(2,0)+
            tt.getUTCDate().toString().padStart(2,0)+
            tt.getUTCHours().toString().padStart(2,0)+
            tt.getUTCMinutes().toString().padStart(2,0)+
            tt.getUTCSeconds().toString().padStart(2,0)+
            tt.getUTCMilliseconds().toString().padStart(3,0)
          const videofilename = val.fileName.split('.')[0]+'_'+suff+'.webm';
          console.log(prefix+videofilename);
          $('#recorded_video').append($('<source>',{src: prefix+videofilename, type:'video/webm'}));
        }
      });
    }
    if (cloudRecordingDetails.serverResponse.fileListMode === 'string') {
      $('#recorded_video').append($('<source>', {src: prefix+fileList, type:'application/x-mpegURL'}));
    }

    const ff = fluidPlayer('recorded_video', {
      layoutControls: {
        posterImage: thumbnailurl,
        playButtonShowing: false,
        autoPlay: true,
        keyboardControl: false,
        controlBar: false,
        fillToContainer: false,
      }
    });
  } catch(err) {
    console.log(err);
  }
});
