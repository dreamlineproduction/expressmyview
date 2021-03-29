$(function(){
  try {
    console.log(cloudRecordingDetails);
    const fileList = cloudRecordingDetails.serverResponse.fileList;
    const prefix = 'https://expressmyviewcn.s3.ap-south-1.amazonaws.com/';
    fileList.forEach((val) => {
      const videofilename = val.fileName.split('.')[0]+'_'+val.sliceStartTime+'.webm';
      console.log(videofilename);
      $('#recorded_video').append($('<source>',{src: prefix+val.fileName, type:'application/x-mpegURL'}));
      $('#recorded_video').append($('<source>',{src: prefix+videofilename, type:'video/webm'}));
    });
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
