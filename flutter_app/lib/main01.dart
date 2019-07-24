import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "TabBar",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: HomePage());
  }
}
