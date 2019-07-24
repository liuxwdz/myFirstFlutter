import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100.0,
      child: Card(
        child: FlatButton(
            onPressed: () {},
            child: Padding(
              padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "这是一点描述",
                      style: TextStyle(fontSize: 16.0, color: Colors.grey),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(5.0)),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      _getItem(Icons.add_location, "1000"),
                      _getItem(Icons.add_call, "1000"),
                      _getItem(Icons.add_circle, "1000"),
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}

Widget _getItem(IconData icon, String text) {
  return Expanded(
    child: Center(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            color: Colors.grey,
            size: 18.0,
          ),
          Padding(padding: EdgeInsets.only(left: 10.0)),
          Text(
            text,
            style: TextStyle(fontSize: 16.0, color: Colors.grey),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    ),
    flex: 1,
  );
}
