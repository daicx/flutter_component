import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWrapView extends StatefulWidget {
  final String title;

  MyWrapView({this.title});

  @override
  State<StatefulWidget> createState() {
    return _MyWrapView();
  }
}

class _MyWrapView extends State<MyWrapView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Scaffold(
        body: Wrap(
          spacing: 8.0, // 主轴(水平)方向间距
          runSpacing: 4.0, // 纵轴（垂直）方向间距
          alignment: WrapAlignment.center, //沿主轴方向居中
          children: <Widget>[
            new Chip(
              avatar: new CircleAvatar(
                  backgroundColor: Colors.blue, child: Text('A')),
              label: new Text('中国大陆1'),
            ),
            new Chip(
              avatar: Icon(
                Icons.ac_unit,
                color: Colors.lightBlue,
              ),
              label: new Text('中国大陆2'),
            ),
            new Chip(
              avatar: new CircleAvatar(
                  backgroundColor: Colors.blue, child: Text('H')),
              label: new Text('中国大陆3'),
            ),
            new Chip(
              avatar: new CircleAvatar(
                  backgroundColor: Colors.blue, child: Text('J')),
              label: new Text('中国大陆4'),
            ),
          ],
        ),
      ),
    );
  }
}
