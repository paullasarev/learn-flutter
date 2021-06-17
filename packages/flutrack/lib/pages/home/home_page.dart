import 'package:flutrack/hooks/use_bloc_state.dart';
import 'package:flutrack/pages/home/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';

import 'home_body.dart';

class HomePage extends HookWidget {
  final String title;
  // final _bloc = CounterCubit(0);

  HomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _bloc = Provider.of<CounterCubit>(context);
    void _incrementCounter() {
      // _counter.value++;
      _bloc.increment();
    }

    // final _counter = useState<int>(0);
    final _counter = useBlocState(_bloc);
    // void _incrementCounter() {
    //   // _counter.value++;
    //   _bloc.increment();
    // }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: HomeBody(counter: _counter),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
