import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttercomponent/routers/route_handler.dart';

class Routes {
  // 路由管理
  static Router router;
  static String root = "/";
  static String textView = "/text_view";
  static String gridView = "/grid_view";
  static String gridView1 = "/grid_view1";
  static String buttonView = "/button_view";

  static void configureRoutes(Router router) {
    // 未发现对应route
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      print('route not found!');
      return;
    });
    router.define(root, handler: roothandle);
    router.define(textView, handler: textHandle);
    router.define(gridView, handler: gridHandle);
    router.define(gridView1, handler: grid1Handle);
    router.define(buttonView, handler: buttonHandle);
    Routes.router = router;
  }

  // 对参数进行encode，解决参数中有特殊字符，影响fluro路由匹配
  static Future navigateTo(BuildContext context, String path,
      {Map<String, dynamic> params,
      TransitionType transition = TransitionType.native}) {
    String query = "";
    if (params != null) {
      int index = 0;
      for (var key in params.keys) {
        var value = Uri.encodeComponent(params[key]);
        if (index == 0) {
          query = "?";
        } else {
          query = query + "\&";
        }
        query += "$key=$value";
        index++;
      }
    }
    print('我是navigateTo传递的参数：$query');
    path = path + query;
    return router.navigateTo(context, path, transition: transition);
  }
}
