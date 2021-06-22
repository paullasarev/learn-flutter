import 'package:elearn/app/app_state.dart';
import 'package:elearn/hooks/use_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import './home_store.dart';
import './home_body.dart';

class HomePage extends HookWidget {
  final String title;

  HomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dispatch = useDispatch<AppState>();
    void _incrementCounter() {
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
