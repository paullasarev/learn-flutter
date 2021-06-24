import 'package:bloc/bloc.dart';
import 'package:elearn/screens/home/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(HomeState state) : super(state);
  HomeCubit.init() : super(HomeState(0));

  void increment() => emit(HomeState(state.counter + 1));
}
