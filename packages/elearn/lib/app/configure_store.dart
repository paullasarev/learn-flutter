import 'package:elearn/screens/home/home_state.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

import 'package:elearn/app/app_store.dart';
import 'package:elearn/app/app_state.dart';

configureStore() {
  return Store<AppState>(
    appReducer,
    initialState: AppState(
      home: HomeState(0),
    ),
    middleware: [thunkMiddleware],
  );
}
