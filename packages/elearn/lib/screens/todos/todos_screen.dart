import 'package:elearn/screens/todos/actions/load_todos.dart';
import 'package:elearn/app/app_state.dart';
import 'package:elearn/hooks/use_store.dart';
import 'package:elearn/screens/todos/todos_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:elearn/widgets/route_dialog.dart';

class MenuOptions {
  bool showAll = false;
}

class TodosScreen extends HookWidget {
  const TodosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var dispatch = useDispatch<AppState>();
    useEffect(() {
      print('onLoaad');
      dispatch(loadTodos(1));
    }, []);

    _showDialog() {
      showDialog(
        context: context,
        barrierDismissible: true,
        builder: (_) =>
            RouteDialog(title: 'Return to the Home screen?', route: '/home'),
      );
    }

    final items = useSelector(selectTodos);

    return Scaffold(
      appBar: AppBar(title: Text("Todos"), actions: [
        // const PopupMenuItem<MenuOptions>(
        //   value: MenuOptions.showAll,
        //   child: Text('showAll'),
        // ),
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
      ]),
      body: ListView(
        children: items
            .map((item) => ListTile(
                  title: Text(item.title),
                  leading: Icon(item.completed
                      ? Icons.check_box_outlined
                      : Icons.check_box_outline_blank),
                ))
            .toList(),
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [],
      //   ),
      // ),
    );
  }
}
