import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttercomponent/component/my_button_view.dart';
import 'package:fluttercomponent/component/my_grid_view.dart';
import 'package:fluttercomponent/component/my_grid_view1.dart';
import 'package:fluttercomponent/component/text_view.dart';

var roothandle =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return MyGridView(
    title: "dddddd",
  );
});

var textHandle =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return TextView();
});
var gridHandle =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  String title = params['title']?.first;
  return MyGridView(title: title);
});
var grid1Handle =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  String title = params['title']?.first;
  return InfiniteGridView(title: title);
});
var buttonHandle =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  String title = params['title']?.first;
  return MyButtonView(title: title);
});
