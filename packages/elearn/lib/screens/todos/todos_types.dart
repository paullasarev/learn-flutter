import 'package:equatable/equatable.dart';

class Todo extends Equatable {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Todo(this.userId, this.id, this.title, this.completed);
  Todo.fromJson(Map<String, dynamic> json)
      : userId = json['userId'],
        title = json['title'],
        completed = json['completed'],
        id = json['id'];

  @override
  List<Object?> get props => [userId, id, title, completed];
}

class TodosState extends Equatable {
  final List<Todo> items;
  TodosState(this.items);

  @override
  List<Object> get props => [items];
}

abstract class TodosRepository {
  Future<List<Todo>> list(String userId);
}
