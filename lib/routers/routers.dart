import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttercomponent/routers/route_handler.dart';

class Routes {
  // 路由管理
  static FluroRouter router;
  static String root = "/";
  static String textView = "/text_view";
  static String gridView = "/grid_view";
  static String gridView1 = "/grid_view1";
  static String buttonView = "/button_view";
  static String flexView = "/flex_view";
  static String rowAndColumnView = "/row_column_view";
  static String myWrapView = "/wrap_view";
  static String myStackView = "/stack_view";
  static String myAlignView = "/align_view";
  static String myDecorateView = "/decoreate_view";
  static String myAppBarView = "/appbar_view";
  static String myTransformView = "/transform_view";
  static String myScaffoldView = "/scaffold_view";
  static String myClipView = "/clip_view";
  static String mySingleChildScrollerView = "/single_scroll_view";
  static String myListView = "/list_view";
  static String myListView1 = "/list_view1";
  static String myListView2 = "/list_view2";
  static String mySliverView = "/sliver_view";
  static String myScrollControl = "/scroll_control";
  static String myScrollControl1 = "/scroll_control1";
  static String myImgView = "/img_view";

  static void configureRoutes(FluroRouter router) {
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
    router.define(flexView, handler: flexHandle);
    router.define(rowAndColumnView, handler: rowAndColumnViewHandle);
    router.define(myWrapView, handler: myWrapViewHandle);
    router.define(myStackView, handler: myStackViewHandle);
    router.define(myAlignView, handler: myAlignViewHandle);
    router.define(myDecorateView, handler: myDecorateViewHandle);
    router.define(myAppBarView, handler: myAppBarViewHandle);
    router.define(myTransformView, handler: myTransformViewHandle);
    router.define(myScaffoldView, handler: myScaffoldViewHandle);
    router.define(myClipView, handler: myClipViewHandle);
    router.define(mySingleChildScrollerView, handler: mySingleChildScrollerViewHandle);
    router.define(myListView, handler: myListViewHandle);
    router.define(myListView1, handler: myListViewHandle1);
    router.define(myListView2, handler: myListViewHandle2);
    router.define(mySliverView, handler: mySliverViewHandle);
    router.define(myScrollControl, handler: myScrollControlHandle);
    router.define(myScrollControl1, handler: myScrollControlHandle1);
    router.define(myImgView, handler: myImgViewHandle);
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
