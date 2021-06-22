import 'package:elearn/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:elearn/app/app_state.dart';
import 'package:elearn/app/configure_store.dart';
import 'package:elearn/screens/home/home_page.dart';

class App extends StatelessWidget {
  final store = configureStore();
  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        initialRoute: '/home',
        // home: HomePage(title: 'Flutter Demo Home Page'),
        routes: {
          '/home': (context) => HomePage(title: 'Flutter Demo Home Page'),
          '/splash': (context) => SplashScreen(),
        },
      ),
    );
  }
}
