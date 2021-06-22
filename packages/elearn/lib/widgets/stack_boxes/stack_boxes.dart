import 'package:elearn/widgets/stack_boxes/border_square.dart';
import 'package:flutter/material.dart';

class StackBoxes extends StatelessWidget {
  const StackBoxes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Stack(
        children: [
          Positioned(
              child: BorderSquare(
                key: Key('3'),
                width: 70,
                color: Colors.redAccent[100]!,
                borderColor: Colors.redAccent[400]!,
              ),
              left: 15,
              // right: 0,
              top: 0),
          Positioned(
            child: BorderSquare(
              key: Key('1'),
              width: 40,
              color: Colors.green[100]!,
              borderColor: Colors.green[400]!,
            ),
            left: 0,
            top: 10,
          ),
          Positioned(
              child: BorderSquare(
                key: Key('2'),
                width: 50,
                color: Colors.amber[100]!,
                borderColor: Colors.amber[400]!,
              ),
              left: 45,
              top: 30),
        ],
        // clipBehavior: Clip.none,
      ),
    );
  }
}
