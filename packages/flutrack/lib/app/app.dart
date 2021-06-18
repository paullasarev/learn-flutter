import 'package:flutrack/app/app_store.dart';
import 'package:flutrack/app/configure_store.dart';
import 'package:flutrack/bloc/counter_cubit.dart';
import 'package:flutrack/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  final store = configureStore();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: StoreProvider<AppStore>(
        store: store,
        child: Provider(
            create: (_) => CounterCubit(0),
            lazy: false,
            child: HomePage(title: 'Flutter Demo Home Page')),
      ),
    );
  }
}
