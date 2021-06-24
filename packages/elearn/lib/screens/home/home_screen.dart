import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

// import 'package:elearn/app/app_state.dart';
import 'package:elearn/hooks/use_bloc.dart';
// import 'package:elearn/hooks/use_store.dart';
import './home_bloc.dart';
// import './home_store.dart';
import './home_body.dart';

class HomeScreen extends HookWidget {
  final String title;

  HomeScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final dispatch = useDispatch<AppState>();
    final homeBloc = useBloc<HomeBloc>();
    void _incrementCounter() {
      // dispatch(IncrementCounterAction());
      homeBloc.increment();
    }

    void _onRoute() {
      Navigator.pushNamed(
        context,
        '/splash',
      );
    }

    // final _counter = useSelector(selectCounter);
    final _counter = useBlocState(homeBloc).counter;

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: HomeBody(
        counter: _counter,
        onRoute: _onRoute,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
