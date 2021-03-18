const initialState = {
  viewersCount: 0,
  hostConnected: false,
  totalviews: 0,
  noOfHosts: 1,
  hostsList: [],
};

const connectedViewers =(state = initialState, action) => {
  switch (action.type) {
    case 'INCREASE_VIEWERS_COUNT':
    {
      const { viewersCount } = state;
      return { ...state, viewersCount: viewersCount + 1}
    }

    case 'DECREASE_VIEWERS_COUNT':
    {
      const { viewersCount } = state;
      return { ...state, viewersCount: viewersCount - 1}
    }

    case 'HOST_CONNECTED':
    {
      const { hostConnected } = action.payload;
      return { ...state, hostConnected };
    }

    case 'ADD_HOST_TO_LIST':
    {
      const { host } = action.payload;
      const { hostList } = state;
      return { ...state, hostList: hostList.append(host) };
    }

    default:
      return state;
  }
};

export default connectedViewers;
