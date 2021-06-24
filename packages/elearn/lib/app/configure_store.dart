import 'package:elearn/screens/home/home_state.dart';
import 'package:elearn/screens/todos/todos_types.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:redux_dev_tools/redux_dev_tools.dart';
import 'package:redux/redux.dart';
import 'package:redux_logging/redux_logging.dart';
import 'package:redux_thunk/redux_thunk.dart';

import 'package:elearn/app/app_store.dart';
import 'package:elearn/app/app_state.dart';

String actionFormatter(
  dynamic state,
  dynamic action,
  DateTime timestamp,
) {
  return '{Action: $action, ts: $timestamp}';
}

configureStore() async {
  await dotenv.load(fileName: '.env');

  // final remoteUrl = '${dotenv.env['LOCAL_IP']}:8000';
  // final remoteUrl = '192.168.1.52:8000';
  // final remoteDevtools = RemoteDevToolsMiddleware(remoteUrl);
  // print('LOCAL_IP=$remoteUrl');

  final initialState = AppState(
    home: HomeState(0),
    todos: TodosState([]),
  );

  // final store = DevToolsStore<AppState>(
  //   appReducer,
  //   initialState: initialState,
  //   middleware: [thunkMiddleware],
  // );
  // remoteDevtools.store = store;
  // await remoteDevtools.connect();
  // print('dev tools connected');
  final logger = LoggingMiddleware.printer(formatter: actionFormatter);

  final store = Store<AppState>(
    appReducer,
    initialState: initialState,
    middleware: [thunkMiddleware, logger],
  );
  return store;
}
