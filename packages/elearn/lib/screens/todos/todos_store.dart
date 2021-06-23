import 'package:elearn/app/app_state.dart';
import 'package:elearn/screens/todos/todos_state.dart';

import 'actions/set_todos.dart';

class IncrementCounterAction {}

List<Todo> selectTodos(AppState state) => state.todos.items;

TodosState todosReducer(TodosState state, dynamic action) {
  if (action is SetTodos) {
    print('SetTodos items:${action.items.length}');
    return TodosState(action.items);
  }
  return state;
}
