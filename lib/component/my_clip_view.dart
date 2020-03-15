import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 模板,方便快速创建一个StatefulWidget
class MyClipView extends StatefulWidget {
  final String title;

  MyClipView({this.title});

  @override
  State<StatefulWidget> createState() {
    return _MyClipView();
  }
}

class _MyClipView extends State<MyClipView> {
  static String url =
      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584271010255&di=238b9615536e7e4ed2ce22eec7de914e&imgtype=0&src=http%3A%2F%2Ffile02.16sucai.com%2Fd%2Ffile%2F2014%2F0829%2Fb871e1addf5f8e96f3b390ece2b2da0d.jpg';
  Image avatar = Image.network(url,width: 100,height: 100,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: getBody(context),
    );
  }

  Center getBody(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          avatar,
          ClipOval(
            child: avatar,
          ),
          ClipRRect(
            //剪裁为圆角矩形
            borderRadius: BorderRadius.circular(5.0),
            child: avatar,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                widthFactor: .5, //宽度设为原来宽度一半，另一半会溢出
                child: avatar,
              ),
              Text(
                "一半有效",
                style: TextStyle(color: Colors.green),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipRect(
                //将溢出部分剪裁
                child: Align(
                  alignment: Alignment.topLeft,
                  widthFactor: .5, //宽度设为原来宽度一半
                  child: avatar,
                ),
              ),
              Text("去掉一半", style: TextStyle(color: Colors.green))
            ],
          ),
        ],
      ),
    );
  }
}
