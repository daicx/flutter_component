import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 模板,方便快速创建一个StatefulWidget
class MyDecoratedBox extends StatefulWidget {
  final String title;

  MyDecoratedBox({this.title});

  @override
  State<StatefulWidget> createState() {
    return _MyDecoratedBox();
  }
}

class _MyDecoratedBox extends State<MyDecoratedBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _decorationWid(),
    );
  }
}

Widget _decorationWid() {
  return ListView(
      children: <Widget>[
        _childChangeWid(
            '两种颜色 均分',
            BoxDecoration(
                gradient: const LinearGradient(
                    colors: [Color(0xFFFFC125), Color(0xFFFF7F24)]))),
        _childChangeWid(
            '多种颜色 均分',
            BoxDecoration(
                gradient: const LinearGradient(colors: [
                  Color(0xFFFFC125), Color(0xFFFF7F24), Color(0xFFFF4040)
                ]))),
        _childChangeWid(
            '两种颜色 1:3',
            BoxDecoration(
                gradient: const LinearGradient(colors: [
                  Color(0xFFFFC125), Color(0xFFFF7F24), Color(0xFFFF7F24), Color(0xFFFF7F24)
                ]))),
        _childChangeWid(
            '两种颜色 垂直均分',
            BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    colors: [Color(0xFFFFC125), Color(0xFFFF7F24)]))),
        _childChangeWid(
            '两种颜色 前半部均分 延伸',
            BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment(-1.0, 0.0), end: Alignment(0.0, 0.0), tileMode: TileMode.clamp,
                    colors: [Color(0xFFFFC125), Color(0xFFFF7F24)]))),
        _childChangeWid(
            '两种颜色 均分 重复',
            BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment(-1.0, 0.0), end: Alignment(0.0, 0.0), tileMode: TileMode.repeated,
                    colors: [Color(0xFFFFC125), Color(0xFFFF7F24)]))),
        _childChangeWid(
            '两种颜色 均分 镜面反射',
            BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment(-1.0, 0.0), end: Alignment(0.0, 0.0), tileMode: TileMode.mirror,
                    colors: [Color(0xFFFFC125), Color(0xFFFF7F24)]))),
        _childChangeWid(
            '两种颜色 设置起始位置与终止位置',
            BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment.topLeft, end: Alignment(0.5, 0.0), tileMode: TileMode.repeated,
                    colors: [Color(0xFFFFC125), Color(0xFFFF7F24)])))]
  );
}

Widget _childChangeWid(var des, Decoration childDec) {
  return Container(
      height: 60.0, alignment: Alignment.center,
      child: Text(des, style: TextStyle(color: Colors.white, fontSize: 16.0)),
      margin: const EdgeInsets.fromLTRB(8.0, 3.0, 8.0, 3.0),
      decoration: childDec);
}
