import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 模板,方便快速创建一个StatefulWidget
class MyListView2 extends StatefulWidget {
  final String title;

  MyListView2({this.title});

  @override
  State<StatefulWidget> createState() {
    return _MyListView2();
  }
}

class _MyListView2 extends State<MyListView2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: <Widget>[
            ListTile(
              title: Text("视频列表"),
            ),
            Expanded(
              child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                return ListTile(title: Text("$index"));
              }),
            )
          ],
        ));
  }
}
