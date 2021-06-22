import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit(int initial) : super(initial);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}