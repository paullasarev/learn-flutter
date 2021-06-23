import 'package:elearn/screens/todos/todos_state.dart';
import 'package:equatable/equatable.dart';
import 'package:elearn/screens/home/home_state.dart';

class AppState extends Equatable {
  final HomeState home;
  final TodosState todos;
  AppState({required this.home, required this.todos});

  @override
  List<Object> get props => [home];
}
