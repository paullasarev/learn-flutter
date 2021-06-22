import 'package:elearn/widgets/route_dialog.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _showDialog() {
      showDialog(
        context: context,
        barrierDismissible: true,
        builder: (_) =>
            RouteDialog(title: 'Return to the Home screen?', route: '/home'),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate back to first route when tapped.
                Navigator.pop(context);
              },
              child: Text('Go back!'),
            ),
            ElevatedButton(
              onPressed: _showDialog,
              child: Text('Ask me!'),
            ),
          ],
        ),
      ),
    );
  }
}
