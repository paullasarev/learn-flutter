import 'package:elearn/app/app_state.dart';

import 'package:elearn/screens/home/home_store.dart';
import 'package:elearn/screens/todos/todos_store.dart';

AppState appReducer(AppState state, dynamic action) => AppState(
      home: homeReducer(state.home, action),
      todos: todosReducer(state.todos, action),
    );
