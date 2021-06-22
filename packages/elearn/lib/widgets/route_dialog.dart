import 'package:flutter/material.dart';

class RouteDialog extends StatelessWidget {
  final String title;
  final String route;
  const RouteDialog({
    Key? key,
    required this.title,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('No'),
          style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 20),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, route);
          },
          child: const Text('Yes'),
          style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
