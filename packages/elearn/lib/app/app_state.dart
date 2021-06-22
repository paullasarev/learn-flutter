import 'package:equatable/equatable.dart';
import 'package:elearn/screens/home/home_state.dart';

class AppState extends Equatable {
  final HomeState home;
  AppState({required this.home});

  @override
  List<Object> get props => [home];
}
