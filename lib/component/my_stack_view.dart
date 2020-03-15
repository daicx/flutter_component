import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyStackView extends StatefulWidget {
  final String title;

  MyStackView({this.title});

  @override
  State<StatefulWidget> createState() {
    return _MyStackView();
  }
}

class _MyStackView extends State<MyStackView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: Stack(
          alignment:Alignment.center , //默认居中
          children: <Widget>[
            Container(child: Text("中间",style: TextStyle(color: Colors.white)),
              color: Colors.red,
            ),
            Positioned(
              left: 22.0,
              child: Text("左边"),
            ),
            Positioned(
              top: 22.0,
              child: Text("上面"),
            ),
            Positioned(
              bottom: 22.0,
              child: Text("下面"),
            ),
            Positioned(
              right: 22.0,
              child: Text("下面"),
            )
          ],
        ),
      )
    );
  }
}
