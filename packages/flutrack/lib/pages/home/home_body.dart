import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
    required ValueNotifier<int> counter,
  })  : _counter = counter,
        super(key: key);

  final ValueNotifier<int> _counter;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '${_counter.value}',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
    );
  }
}
