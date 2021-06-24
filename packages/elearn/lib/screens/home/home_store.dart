import 'package:elearn/app/app_state.dart';
import 'package:elearn/screens/home/home_types.dart';

class IncrementCounterAction {}

int selectCounter(AppState state) => state.home.counter;

HomeState homeReducer(HomeState state, dynamic action) {
  if (action is IncrementCounterAction) {
    return HomeState(state.counter + 1);
  }
  return state;
}
