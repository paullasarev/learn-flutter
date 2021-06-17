import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'home_body.dart';

class HomePage extends HookWidget {
  final String title;

  HomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _counter = useState<int>(0);
    void _incrementCounter() {
      _counter.value++;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: HomeBody(counter: _counter),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
