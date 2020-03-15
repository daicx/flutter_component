//import 'package:fluro/fluro.dart';

import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:fluttercomponent/routers/routers.dart';

import 'component/my_grid_view.dart';

void main() {
  final router = Router();
  Routes.configureRoutes(router);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 组件大全',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: Routes.router.generator,
//      initialRoute: "/",
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter 组件大全"),
        ),
        body: _gridView(context));
  }
}

Widget _gridView(BuildContext context) {
  return GridView(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 3.0, mainAxisSpacing: 5.0, crossAxisCount: 3),
    children: <Widget>[
      GestureDetector(
        onTap: () => Routes.navigateTo(context, Routes.textView),
        child: Container(
            height: 100,
            color: Colors.green,
            child: Center(
              child: Text(
                "文本",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            )),
      ),
      GestureDetector(
        onTap: () => Routes.navigateTo(context, Routes.gridView,
            params: {'title': '网格布局'}),
        child: Container(
            height: 100,
            color: Colors.green,
            child: Center(
              child: Text(
                "网格",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            )),
      ),
      GestureDetector(
        onTap: () => Routes.navigateTo(context, Routes.gridView1,
            params: {'title': '网格布局类型1'}),
        child: Container(
            height: 100,
            color: Colors.green,
            child: Center(
              child: Text(
                "网格1",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            )),
      ),
      GestureDetector(
        onTap: () => Routes.navigateTo(context, Routes.buttonView,
            params: {'title': '按钮'}),
        child: Container(
            height: 100,
            color: Colors.green,
            child: Center(
              child: Text(
                "按钮",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            )),
      ),
      GestureDetector(
        onTap: () => Routes.navigateTo(context, Routes.flexView,
            params: {'title': 'flex视图'}),
        child: Container(
            height: 100,
            color: Colors.green,
            child: Center(
              child: Text(
                "flex视图",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            )),
      ),
      GestureDetector(
        onTap: () => Routes.navigateTo(context, Routes.rowAndColumnView,
            params: {'title': 'row和column'}),
        child: Container(
            height: 100,
            color: Colors.green,
            child: Center(
              child: Text(
                "row和column",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            )),
      ),
      GestureDetector(
        onTap: () => Routes.navigateTo(context, Routes.myWrapView,
            params: {'title': 'wrap视图'}),
        child: Container(
            height: 100,
            color: Colors.green,
            child: Center(
              child: Text(
                "wrap视图",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            )),
      ),
      GestureDetector(
        onTap: () => Routes.navigateTo(context, Routes.myStackView,
            params: {'title': 'stack视图'}),
        child: Container(
            height: 100,
            color: Colors.green,
            child: Center(
              child: Text(
                "stack视图",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            )),
      ),
      GestureDetector(
        onTap: () => Routes.navigateTo(context, Routes.myAlignView,
            params: {'title': 'align视图'}),
        child: Container(
            height: 100,
            color: Colors.green,
            child: Center(
              child: Text(
                "align视图",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            )),
      ),
      GestureDetector(
        onTap: () => Routes.navigateTo(context, Routes.myDecorateView,
            params: {'title': '装饰视图'}),
        child: Container(
            height: 100,
            color: Colors.green,
            child: Center(
              child: Text(
                "装饰视图",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            )),
      ),
      GestureDetector(
        onTap: () => Routes.navigateTo(context, Routes.myAppBarView,
            params: {'title': 'appbar'}),
        child: Container(
            height: 100,
            color: Colors.green,
            child: Center(
              child: Text(
                "appbar",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            )),
      ),
      GestureDetector(
        onTap: () => Routes.navigateTo(context, Routes.myTransformView,
            params: {'title': 'Transform视图'}),
        child: Container(
            height: 100,
            color: Colors.green,
            child: Center(
              child: Text(
                "Transform视图",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            )),
      ),
      GestureDetector(
        onTap: () => Routes.navigateTo(context, Routes.myScaffoldView,
            params: {'title': 'Scaffold视图'}),
        child: Container(
            height: 100,
            color: Colors.green,
            child: Center(
              child: Text(
                "Scaffold视图",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            )),
      ),
      GestureDetector(
        onTap: () => Routes.navigateTo(context, Routes.myClipView,
            params: {'title': 'clip裁剪'}),
        child: Container(
            height: 100,
            color: Colors.green,
            child: Center(
              child: Text(
                "clip裁剪",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            )),
      ),
      GestureDetector(
        onTap: () => Routes.navigateTo(
            context, Routes.mySingleChildScrollerView,
            params: {'title': 'SingleChildScrollerView'}),
        child: Container(
            height: 100,
            color: Colors.green,
            child: Center(
              child: Text(
                "SingleChildScrollerView",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            )),
      ),
      GestureDetector(
        onTap: () => Routes.navigateTo(context, Routes.myListView,
            params: {'title': 'listView'}),
        child: Container(
            height: 100,
            color: Colors.green,
            child: Center(
              child: Text(
                "listView",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            )),
      ),
      GestureDetector(
        onTap: () => Routes.navigateTo(context, Routes.myListView1,
            params: {'title': 'listView1'}),
        child: Container(
            height: 100,
            color: Colors.green,
            child: Center(
              child: Text(
                "listView1",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            )),
      ),
      GestureDetector(
        onTap: () => Routes.navigateTo(context, Routes.myListView2,
            params: {'title': 'listView2'}),
        child: Container(
            height: 100,
            color: Colors.green,
            child: Center(
              child: Text(
                "listView2",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            )),
      ),
      GestureDetector(
        onTap: () => Routes.navigateTo(context, Routes.mySliverView,
            params: {'title': 'SliverView'}),
        child: Container(
            height: 100,
            color: Colors.green,
            child: Center(
              child: Text(
                "SliverView",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            )),
      ),
      GestureDetector(
        onTap: () => Routes.navigateTo(context, Routes.myScrollControl,
            params: {'title': 'ScrollControl'}),
        child: Container(
            height: 100,
            color: Colors.green,
            child: Center(
              child: Text(
                "ScrollControl",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            )),
      ),
      GestureDetector(
        onTap: () => Routes.navigateTo(context, Routes.myScrollControl1,
            params: {'title': 'ScrollControl1'}),
        child: Container(
            height: 100,
            color: Colors.green,
            child: Center(
              child: Text(
                "ScrollControl1",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            )),
      ),
      GestureDetector(
        onTap: () => Routes.navigateTo(context, Routes.myImgView,
            params: {'title': 'ImgView'}),
        child: Container(
            height: 100,
            color: Colors.green,
            child: Center(
              child: Text(
                "ImgView",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            )),
      ),
    ],
  );
}
