import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 模板,方便快速创建一个StatefulWidget
class MyScrollControl1 extends StatefulWidget {
  final String title;

  MyScrollControl1({this.title});

  @override
  State<StatefulWidget> createState() {
    return _MyScrollControl1();
  }
}

class _MyScrollControl1 extends State<MyScrollControl1> {
  String _progress = "0%";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Scrollbar(
          child: NotificationListener<ScrollNotification>(
            onNotification: (ScrollNotification notification) {
              double progress = notification.metrics.pixels /
                  notification.metrics.maxScrollExtent;
              //重新构建
              setState(() {
                _progress = "${(progress * 100).toInt()}%";
              });
              print("BottomEdge: ${notification.metrics.extentAfter == 0}");
              return true; //放开此行注释后，进度条将失效
            },
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                ListView.builder(
                    itemCount: 100,
                    itemExtent: 50.0,
                    itemBuilder: (context, index) {
                      return ListTile(title: Text("$index"));
                    }),
                CircleAvatar(
                  //显示进度百分比
                  radius: 30.0,
                  child: Text(_progress),
                  backgroundColor: Colors.black54,
                )
              ],
            ),
          ),
        ));
  }
}
