import 'package:flutrack/app/app_store.dart';
import 'package:redux/redux.dart';

configureStore() {
  return Store<AppStore>(appReducer, initialState: AppStore(counter: 0));
}
