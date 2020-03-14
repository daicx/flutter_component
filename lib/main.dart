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
      body: GridView(
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
            onTap: () => Routes.navigateTo(context, Routes.gridView,params: {'title':'网格布局'}),
            child: Container(
              height: 100,
              color: Colors.green,
                child: Center(
                  child: Text(
                    "网格",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                )
            ),
          ),
          GestureDetector(
            onTap: () => Routes.navigateTo(context, Routes.gridView1,params: {'title':'网格布局类型1'}),
            child: Container(
                height: 100,
                color: Colors.green,
                child: Center(
                  child: Text(
                    "网格1",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                )
            ),
          ),
          GestureDetector(
            onTap: () => Routes.navigateTo(context, Routes.buttonView,params: {'title':'按钮'}),
            child: Container(
                height: 100,
                color: Colors.green,
                child: Center(
                  child: Text(
                    "按钮",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                )
            ),
          )
        ],
      ),
    );
  }
}
