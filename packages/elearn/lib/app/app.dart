import 'package:elearn/screens/home/home_bloc.dart';
import 'package:elearn/screens/todos/todos_bloc.dart';
import 'package:elearn/screens/todos/todos_repository_http.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:elearn/app/app_state.dart';
import 'package:elearn/screens/todos/todos_screen.dart';
import 'package:elearn/screens/home/home_screen.dart';
import 'package:redux/redux.dart';

class App extends StatelessWidget {
  final Store<AppState> store;
  App(this.store);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(
          create: (BuildContext context) => HomeBloc(),
        ),
        BlocProvider<TodosBloc>(
          create: (BuildContext context) => TodosBloc(TodosRepositoryHttp()),
        ),
      ],
      child: StoreProvider<AppState>(
        store: store,
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.amber,
          ),
          initialRoute: '/home',
          routes: {
            '/home': (context) => HomeScreen(title: 'Flutter Demo Home Page'),
            '/splash': (context) => TodosScreen(),
          },
          // builder: (context, child) {
          //   return Scaffold(
          //     drawer: ReduxDevTools<AppState>(store),
          //     body: child,
          //   );
          // },
        ),
      ),
    );
  }
}
