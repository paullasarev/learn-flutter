class AppStore {
  final int counter;
  AppStore({this.counter = 0});
}

class IncrementCounterAction {}

int selectCounter(AppStore store) => store.counter;

AppStore appReducer(AppStore store, dynamic action) {
  if (action is IncrementCounterAction) {
    return AppStore(counter: store.counter + 1);
  }
  return store;
}
