import 'package:flutter/material.dart';
import 'MoviceData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "TabBar",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
        backgroundColor: Colors.blue,
      ),
      body: GridView.builder(
          padding: EdgeInsets.all(10.0),
          itemCount: moviceDatas.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: 0.5),
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12, width: 1.0),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      moviceDatas[index]["poster"],
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                  Text(
                    moviceDatas[index]["title"],
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(fontSize: 16.0, color: Colors.deepPurple),
                  ),
                  SizedBox(height: 10.0),
                  Text(moviceDatas[index]["plot_simple"],
                      style: TextStyle(fontSize: 12.0, color: Colors.grey)),
                ],
              ),
            );
          }),
    );
  }
}
