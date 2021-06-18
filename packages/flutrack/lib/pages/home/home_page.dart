import 'package:flutrack/app/app_store.dart';
import 'package:flutrack/hooks/use_bloc_state.dart';
import 'package:flutrack/bloc/counter_cubit.dart';
import 'package:flutrack/hooks/use_store.dart';
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
    final dispatch = useDispatch<AppStore>();
    void _incrementCounter() {
      _bloc.increment();
      dispatch(IncrementCounterAction());
    }

    // final _counter = useBlocState(_bloc);
    final _counter = useSelector(selectCounter);

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
