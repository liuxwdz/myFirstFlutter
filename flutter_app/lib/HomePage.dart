import 'package:flutter/material.dart';
import 'TopBarPageWidget.dart';
import 'TopBarBottomPageWidget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("TabBar"),
      ),
      body: new Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
            width: 150.0,
            child: new FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new TopBarPageWidget()));
              },
              child: new Text("Top Bar"),
              color: Colors.blue,
            ),
          ),
          new Container(
            width: 150.0,
            child: new FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new TabBarBottomPageWidget()));
              },
              child: new Text("Bottom Bar"),
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
