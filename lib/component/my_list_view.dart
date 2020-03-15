import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 模板,方便快速创建一个StatefulWidget
class MyListView extends StatefulWidget {
  final String title;

  MyListView({this.title});

  @override
  State<StatefulWidget> createState() {
    return _MyListView();
  }
}

class _MyListView extends State<MyListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
          itemCount: 100,
          itemExtent: 50.0, //强制高度为50.0
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text("$index"),
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                  '/imgs/11.jpg',
                ),
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
              ),
              onTap: () {
                // do something
              },
              onLongPress: () {
                // do something else
              },
            );
          }),
    );
  }
}
