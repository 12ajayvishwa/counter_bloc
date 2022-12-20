import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/cubit/counter_cubit.dart';

void main() {
  group('CounterCubit', () {
    CounterCubit? counterCubit;

    setUp(() {
      counterCubit = CounterCubit();
    });
    tearDown(() {
      counterCubit!.close();
    });

    test(
        'the initial state for the CounterCubit is CounterState(counterValue:0)',
        () {
      expect(counterCubit!.state, CounterState(counterValue: 0));
    });
    blocTest<CounterCubit, CounterState>(  
      'the cubit should emit a CounterState(counterValue:1,was incremented:true) when cubit.increment() function is called',
      build: () => CounterCubit(),
      act: (cubit) => cubit.increment(),
      expect: () =>
          <CounterState>[CounterState(counterValue: 1, wasIncremented: true)],
    );

    blocTest<CounterCubit, CounterState>(
      'the cubit should emit a CounterState(counterValue:-1,was incremented:false) when cubit.decrement() function is called',
      build: () => CounterCubit(),
      act: (cubit) => cubit.decrement(),
      expect: () =>
          <CounterState>[CounterState(counterValue: -1, wasIncremented: false)],
    );
  });
}
