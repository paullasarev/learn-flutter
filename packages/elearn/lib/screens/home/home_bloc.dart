import 'package:bloc/bloc.dart';
import 'package:elearn/screens/home/home_types.dart';

class HomeBloc extends Cubit<HomeState> {
  HomeBloc() : super(HomeState(0));

  void increment() => emit(HomeState(state.counter + 1));
}
