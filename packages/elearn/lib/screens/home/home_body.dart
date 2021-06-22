import 'package:elearn/widgets/stack_boxes/stack_boxes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  HomeBody({Key? key, required int counter, required this.onRoute})
      : _counter = counter,
        super(key: key);

  // final ValueNotifier<int> _counter;
  final int _counter;
  final VoidCallback onRoute;
  final _buttonStyle =
      ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.all(30.0),
      // color: Colors.blue[100],
      decoration: BoxDecoration(
        border: Border.all(
          color: (Colors.blue[400])!,
          width: 2.0,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.blue[100],
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headline4,
          ),
          StackBoxes(),
          Icon(
            Icons.play_circle,
            color: Colors.green,
            size: 30.0,
            semanticLabel: 'Play audio',
          ),
          ElevatedButton(
            style: _buttonStyle,
            onPressed: onRoute,
            child: const Text('Go next'),
          ),
        ],
      ),
    );
  }
}
