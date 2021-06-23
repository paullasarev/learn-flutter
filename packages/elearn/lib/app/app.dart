import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:elearn/app/app_state.dart';
import 'package:elearn/screens/todos/todos_screen.dart';
import 'package:elearn/screens/home/home_page.dart';
import 'package:redux/redux.dart';
// import 'package:redux_dev_tools/redux_dev_tools.dart';

class App extends StatelessWidget {
  final Store<AppState> store;
  App(this.store);

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
          '/splash': (context) => TodosScreen(),
        },
        // builder: (context, child) {
        //   return Scaffold(
        //     drawer: ReduxDevTools<AppState>(store),
        //     body: child,
        //   );
        // },
      ),
    );
  }
}
