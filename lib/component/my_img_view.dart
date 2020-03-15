import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyImgView extends StatefulWidget {
  final String title;

  MyImgView({this.title});

  @override
  State<StatefulWidget> createState() {
    return _MyImgView();
  }
}

class _MyImgView extends State<MyImgView> {
  static String url =
      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1584271010255&di=238b9615536e7e4ed2ce22eec7de914e&imgtype=0&src=http%3A%2F%2Ffile02.16sucai.com%2Fd%2Ffile%2F2014%2F0829%2Fb871e1addf5f8e96f3b390ece2b2da0d.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: <Widget>[
            Image.asset(
              "imgs/11.jpg",
              width: 100,
              height: 100,
            ),
            Row(
              children: <Widget>[
                Image.asset(
                  "imgs/11.jpg",
                  width: 100,
                  height: 100,
                ),
                Image.asset(
                  "imgs/11.jpg",
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  colorBlendMode: BlendMode.colorBurn,
                ),
                Image.asset(
                  "imgs/11.jpg",
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  colorBlendMode: BlendMode.colorDodge,
                ),
                Image.asset(
                  "imgs/11.jpg",
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  colorBlendMode: BlendMode.difference,
                ),
              ],
            ),
            Image.network(
              url,
              width: 300,
              height: 300,
            ),
          ],
        ));
  }
}
