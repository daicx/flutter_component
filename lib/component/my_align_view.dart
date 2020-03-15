import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 模板,方便快速创建一个StatefulWidget
class MyAlignView extends StatefulWidget {
  final String title;

  MyAlignView({this.title});

  @override
  State<StatefulWidget> createState() {
    return _MyAlignView();
  }
}

class _MyAlignView extends State<MyAlignView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child:
              Container(
                color: Colors.green,
                child: Align(
                  alignment: FractionalOffset(0.7,0.7),
                  child: Text(
                    "坐标(0.7,0.7)",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ),
          ),
    );
  }
}
