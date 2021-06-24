import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:elearn/screens/todos/todos_state.dart';

class TodosCubit extends Cubit<TodosState> {
  TodosCubit(TodosState state) : super(state);
  TodosCubit.init() : super(TodosState([]));

  void set(List<Todo> items) => emit(TodosState(items));

  void load(String userId) async {
    try {
      final response = await Dio().get(
        'https://jsonplaceholder.typicode.com/todos',
        queryParameters: {'userId': userId},
      );
      // print(response.data as List);
      final items =
          (response.data as List).map((item) => Todo.fromJson(item)).toList();
      // print(items);
      set(items);
    } catch (e) {
      print(e);
    }
  }
}
