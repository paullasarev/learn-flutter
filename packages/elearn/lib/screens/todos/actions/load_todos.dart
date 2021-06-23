import 'package:dio/dio.dart';
import 'package:elearn/app/app_state.dart';
import 'package:elearn/screens/todos/actions/set_todos.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

import '../todos_state.dart';

ThunkAction<AppState> loadTodos(int userId) {
  return (Store store) async {
    try {
      var response = await Dio().get(
        'https://jsonplaceholder.typicode.com/todos',
        queryParameters: {'userId': '1'},
      );
      // print(response.data as List);
      final items =
          (response.data as List).map((item) => Todo.fromJson(item)).toList();
      // print(items);
      store.dispatch(SetTodos(items));
    } catch (e) {
      print(e);
    }
  };
}
