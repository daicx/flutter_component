import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 模板,方便快速创建一个StatefulWidget
class Template extends StatefulWidget {
  final String title;

  Template({this.title});

  @override
  State<StatefulWidget> createState() {
    return _Template();
  }
}

class _Template extends State<Template> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}
