const initialState = {
  camList: null,
  micList: null,
  playbackList: null,
  currentMic: null,
  currentCam: null,
  currentPBD: null,
}

const devices = (state = initialState, action) => {
  switch (action.type) {
    case 'SET_DEVICE_LIST': {
      const { devicelist, devicetype } = action.payload;
      if (devicetype === 'CAM') {
        return { ...state, camList: devicelist };
      } else if (devicetype === 'MIC') {
        return { ...state, micList: devicelist };
      } else if (devicetype === 'PBD') {
        return { ...state, playbackList: devicelist };
      } else {
        return state;
      }
    }

    case 'SET_CURRENT_DEVICE': {
      const { deviceId, devicetype } = action.payload;
      if (devicetype === 'CAM') {
        return { ...state, currentCam: deviceId };
      } else if (devicetype === 'MIC') {
        return { ...state, currentMic: deviceId };
      } else if (devicetype === 'PBD') {
        return { ...state, currentPBD: deviceId };
      } else {
        return state;
      }
    }

    case 'REMOVE_DEVICE':
    {
      const { micList, camList, playbackList } = state;
      const { deviceId, devicetype } = action.payload;
      if (devicetype === 'CAM') {
        return { ...state, camList: camList.filter(item => item.deviceId !== deviceId) };
      } else if (devicetype === 'MIC') {
        return { ...state, micList: micList.filter(item => item.deviceId !== deviceId) };
      } else if (devicetype === 'PBD') {
        return { ...state, playbackList: playbackList.filter(item => item.deviceId !== deviceId) };
      } else {
        return state;
      }
    }

    case 'ADD_DEVICE':
    {
      const { micList, camList, playbackList } = state;
      const { device, devicetype } = action.payload;
      if (devicetype === 'CAM') {
        return { ...state, camList: camList.push(device) };
      } else if (devicetype === 'MIC') {
        return { ...state, micList: micList.push(device) };
      } else if (devicetype === 'PBD') {
        return { ...state, playbackList: playbackList.push(device) };
      } else {
        return state;
      }
    }

    default:
      return state;
  }
};
export default devices
