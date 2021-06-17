import 'package:flutrack/pages/home/home_bloc.dart';
import 'package:flutrack/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Provider(
          create: (_) => CounterCubit(0),
          lazy: false,
          child: HomePage(title: 'Flutter Demo Home Page')),
    );
  }
}
