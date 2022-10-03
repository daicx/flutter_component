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
            child: ElevatedButton(
              child: Text("ElevatedButton"),
              onPressed: () {},
            ),
          ),
          Container(
            margin: EdgeInsets.all(3),
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: TextButton(
              child: Text("TextButton"),
              onPressed: () {},
            ),
          ),
          Container(
            margin: EdgeInsets.all(3),
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: OutlinedButton(
              child: Text("OutlinedButton"),
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
            child: ElevatedButton.icon(
              icon: Icon(Icons.ac_unit),
              label: Text("带图标的按钮"),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
