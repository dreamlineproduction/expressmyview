const initialState = {
  id: null,
  webcamOff: false,
  micMuted: false,
  connectionState: 'DISCONNECTED',
  localVideoTrackavailable: false,
  localAudioTrackavailable: false,
  localScreenTrackavailable: false,
};

const host = (state = initialState, action) => {
  switch(action.type)
  {
    case 'SET_WEBCAM_OFF':
    {
      const { flag } = action.payload;
      return { ...state, webcamOff: flag };
    }

    case 'SET_MIC_MUTED':
    {
      const { flag } = action.payload;
      return { ...state, micMuted: flag };
    }

    case 'SET_CONN_STATE':
    {
      const { connectionState } = action.payload;
      return { ...state, connectionState };
    }

    case 'AUDIO_TRACK_AVAILABLE':
    {
      const { localAudioTrackavailable } = action.payload;
      return { ...state, localAudioTrackavailable };
    }

    case 'VIDEO_TRACK_AVAILABLE':
    {
      const { localVideoTrackavailable } = action.payload;
      return { ...state, localVideoTrackavailable };
    }

    case 'SCREEN_TRACK_AVAILABLE':
    {
      const { localScreenTrackavailable } = action.payload;
      return { ...state, localScreenTrackavailable };
    }

    default:
      return state;
  }
}

export default host;
