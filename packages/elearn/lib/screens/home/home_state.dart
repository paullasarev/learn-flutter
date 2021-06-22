import 'package:equatable/equatable.dart';

class HomeState extends Equatable {
  final int counter;
  HomeState(this.counter);

  @override
  List<Object> get props => [counter];
}
