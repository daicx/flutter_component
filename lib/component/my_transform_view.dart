import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 模板,方便快速创建一个StatefulWidget
class MyTransformView extends StatefulWidget {
  final String title;

  MyTransformView({this.title});

  @override
  State<StatefulWidget> createState() {
    return _MyTransformView();
  }
}

class _MyTransformView extends State<MyTransformView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _getTransform(context),
    );
  }
}

Widget _getTransform(BuildContext context) {
  return Center(
      child: Container(
    color: Colors.black,
    child: Transform(
      alignment: Alignment.topRight, //相对于坐标系原点的对齐方式
      transform: Matrix4.skewY(0.4), //沿Y轴倾斜0.4弧度
      child: Container(
        padding: const EdgeInsets.all(8.0),
        color: Colors.deepOrange,
        child: const Text('4D 旋转变换,40度'),
      ),
    ),
  ));
}
