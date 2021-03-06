import 'package:flutrack/bloc/counter_cubit.dart';
import 'package:test/test.dart';

void main() {
  test('Counter value should be incremented', () {
    final counter = CounterCubit(0);
    expect(counter.stream, emitsThrough(1));

    counter.increment();
  });
}
