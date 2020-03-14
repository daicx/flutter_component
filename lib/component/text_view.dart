import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("文本视图"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(3),
            width: MediaQuery.of(context).size.width,
            height: 100,
            color: Colors.blue,
            child: Text(
              "data",
              textAlign: TextAlign.right,
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
          Container(
            margin: EdgeInsets.all(3),
            width: MediaQuery.of(context).size.width,
            height: 100,
            color: Colors.blue,
            child: Text(
              "data" * 11,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
          Container(
            margin: EdgeInsets.all(3),
            width: MediaQuery.of(context).size.width,
            height: 100,
            color: Colors.blue,
            child: Text(
              "data",
              textAlign: TextAlign.center,
              textScaleFactor: 2,
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
          Container(
            margin: EdgeInsets.all(3),
            width: MediaQuery.of(context).size.width,
            height: 100,
            color: Colors.blue,
            child: Text(
              "data",
              textAlign: TextAlign.center,
              textScaleFactor: 2,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  backgroundColor: Colors.amber,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed),
            ),
          ),
          Container(
              margin: EdgeInsets.all(3),
              width: MediaQuery.of(context).size.width,
              height: 100,
              color: Colors.blue,
              child: Text.rich(
                TextSpan(children: [
                  TextSpan(text: "姓名:", style: TextStyle(color: Colors.red)),
                  TextSpan(
                      text: "小米",
                      style: TextStyle(color: Colors.white, fontSize: 30))
                ]),
              )),
        ],
      ),
    );
  }
}
