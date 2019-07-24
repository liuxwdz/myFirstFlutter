import 'package:flutter/material.dart';
import 'tabpage/TabBarPageFirst.dart';
import 'tabpage/TabBarPageSecond.dart';
import 'tabpage/TabBarPageThird.dart';
import 'tabpage/TabBarPageFour.dart';
import 'GSYTabBarWidget.dart';

class TopBarPageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _TopBarPageWidgetState();
}

class _TopBarPageWidgetState extends State<TopBarPageWidget> {
  final PageController topPageControl = new PageController();

  final List<String> tab = [
    "111",
    "222",
    "333",
    "444",
    "555",
    "666",
    "777",
    "888",
    "999",
    "1010",
    "1111",
    "1212",
    "1313",
    "1414",
    "!515",
    "1616"
  ];

  _renderTab() {
    List<Widget> list = new List();
    for (int i = 0; i < tab.length; i++) {
      list.add(new FlatButton(
          onPressed: () {
            topPageControl.jumpTo(MediaQuery.of(context).size.width * i);
          },
          child: new Text(
            tab[i],
            maxLines: 1,
          )));
    }
    return list;
  }

  _renderPage() {
    return [
      new TabBarPageFirst(),
      new TabBarPageSecond(),
      new TabBarPageThird(),
      new TabBarPageFour(),
      new TabBarPageFirst(),
      new TabBarPageSecond(),
      new TabBarPageThird(),
      new TabBarPageFour(),
      new TabBarPageFirst(),
      new TabBarPageSecond(),
      new TabBarPageThird(),
      new TabBarPageFour(),
      new TabBarPageFirst(),
      new TabBarPageSecond(),
      new TabBarPageThird(),
      new TabBarPageFour(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return new GSYTabBarWidget(
        type: GSYTabBarWidget.TOP_TAB,
        tabItems: _renderTab(),
        tabViews: _renderPage(),
        topPageControl: topPageControl,
        backgroundColor: Colors.lightBlue,
        indicatorColor: Colors.white,
        title: new Text("Test"));
  }
}
