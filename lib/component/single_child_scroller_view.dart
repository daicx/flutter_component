import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 模板,方便快速创建一个StatefulWidget
class MySingleChildScrollerView extends StatefulWidget {
  final String title;

  MySingleChildScrollerView({this.title});

  @override
  State<StatefulWidget> createState() {
    return _MySingleChildScrollerView();
  }
}

class _MySingleChildScrollerView extends State<MySingleChildScrollerView> {
  String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Scrollbar(
          // 显示进度条
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                //动态创建一个List<Widget>
                children: str
                    .split("")
                    //每一个字母都用一个Text显示,字体为原来的两倍
                    .map((c) => Text(
                          c,
                          textScaleFactor: 2.0,
                        ))
                    .toList(),
              ),
            ),
          ),
        ));
  }
}
