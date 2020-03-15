import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButtonView extends StatefulWidget {
  final String title;

  MyButtonView({this.title});

  @override
  State<StatefulWidget> createState() {
    return _MyButtonView();
  }
}

class _MyButtonView extends State<MyButtonView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(3),
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: RaisedButton(
              child: Text("RaisedButton"),
              onPressed: () {},
            ),
          ),
          Container(
            margin: EdgeInsets.all(3),
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: FlatButton(
              child: Text("FlatButton"),
              onPressed: () {},
            ),
          ),
          Container(
            margin: EdgeInsets.all(3),
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: OutlineButton(
              child: Text("FlatButton"),
              onPressed: () {},
            ),
          ),
          Container(
            margin: EdgeInsets.all(3),
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: IconButton(
              icon: Icon(Icons.accessibility),
              onPressed: () {},
            ),
          ),
          Container(
            margin: EdgeInsets.all(3),
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: RaisedButton.icon(
              icon: Icon(Icons.ac_unit),
              label: Text("带图标的按钮"),
              onPressed: () {},
            ),
          ),
          Container(
            margin: EdgeInsets.all(3),
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: FlatButton(
              color: Colors.blue,
              highlightColor: Colors.blue[700],
              colorBrightness: Brightness.dark,
              splashColor: Colors.grey,
              child: Text("自定义按钮"),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
