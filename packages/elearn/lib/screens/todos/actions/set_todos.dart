import 'package:elearn/screens/todos/todos_state.dart';

class SetTodos {
  final List<Todo> items;
  SetTodos(this.items);
  String toString() => 'SetTodos: items[${items.length}]';
}
