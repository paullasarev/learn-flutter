import 'package:bloc/bloc.dart';
import 'package:elearn/screens/todos/todos_types.dart';

class TodosBloc extends Cubit<TodosState> {
  TodosRepository repository;

  TodosBloc(this.repository) : super(TodosState([]));

  void set(List<Todo> items) => emit(TodosState(items));

  void load(String userId) async {
    final items = await repository.list(userId);
    set(items);
  }
}
