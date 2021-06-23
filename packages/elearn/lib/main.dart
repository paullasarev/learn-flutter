import 'package:elearn/app/configure_store.dart';
import 'package:flutter/material.dart';
import 'package:elearn/app/app.dart';

void main() async {
  var store = await configureStore();
  runApp(App(store));
}
