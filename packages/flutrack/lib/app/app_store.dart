import 'package:equatable/equatable.dart';

class AppStore extends Equatable {
  final int counter;
  AppStore({this.counter = 0});

  @override
  List<Object> get props => [counter];
}

class IncrementCounterAction {}

int selectCounter(AppStore store) => store.counter;

AppStore appReducer(AppStore store, dynamic action) {
  if (action is IncrementCounterAction) {
    return AppStore(counter: store.counter + 1);
  }
  return store;
}
