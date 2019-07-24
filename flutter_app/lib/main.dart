import 'package:flutter/material.dart';
import 'cardItem.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.blue),
        home: MyHomeDemo());
  }
}

class MyHomeDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeDemoState();
}

class HomeDemoState extends State<MyHomeDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Demo"),
        ),
        backgroundColor: Colors.blue,
        body: ListView.builder(
          itemBuilder: (context, index) {
            return MyCard();
          },
          itemCount: 10,
        ));
  }
}
