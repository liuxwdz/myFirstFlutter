import 'package:flutter/material.dart';

class TabBarPageFirst extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _TabBarPageFirstState();
}

class _TabBarPageFirstState extends State<TabBarPageFirst>
    with AutomaticKeepAliveClientMixin {
  final _suggestions = <String>[];

  final _biggerFont = const TextStyle(fontSize: 18.0);

  _buildRow(String pair) {
    return new ListTile(
      title: new Text(
        pair,
        style: _biggerFont,
      ),
    );
  }

  _generateWordPairs() {
    return [
      "11111",
      "222222",
      "3333333",
      "4444444",
      "11111",
      "222222",
      "3333333",
      "4444444",
      "11111",
      "222222",
      "3333333",
      "4444444",
      "11111",
      "222222",
      "3333333",
      "4444444"
    ];
  }

  Widget _buildSuggestion() {
    return new ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          if (i.isOdd) return new Divider();

          final index = i ~/ 2;

          // 如果是建议列表中最后一个单词对

          if (index >= _suggestions.length) {
            _suggestions.addAll(_generateWordPairs());
          }

          return _buildRow(_suggestions[index]);
        });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return _buildSuggestion();
  }

  @override
  bool get wantKeepAlive => true;
}
