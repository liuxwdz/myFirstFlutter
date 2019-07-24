import 'package:flutter/material.dart';
import 'cardItem.dart';

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