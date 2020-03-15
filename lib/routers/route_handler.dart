import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttercomponent/component/my_align_view.dart';
import 'package:fluttercomponent/component/my_appbar_view.dart';
import 'package:fluttercomponent/component/my_button_view.dart';
import 'package:fluttercomponent/component/my_clip_view.dart';
import 'package:fluttercomponent/component/my_decorate_box.dart';
import 'package:fluttercomponent/component/my_flex_view.dart';
import 'package:fluttercomponent/component/my_grid_view.dart';
import 'package:fluttercomponent/component/my_grid_view1.dart';
import 'package:fluttercomponent/component/my_img_view.dart';
import 'package:fluttercomponent/component/my_list_view.dart';
import 'package:fluttercomponent/component/my_list_view1.dart';
import 'package:fluttercomponent/component/my_list_view2.dart';
import 'package:fluttercomponent/component/my_scaffold_view.dart';
import 'package:fluttercomponent/component/my_scroll_control.dart';
import 'package:fluttercomponent/component/my_scroll_control1.dart';
import 'package:fluttercomponent/component/my_sliver_view.dart';
import 'package:fluttercomponent/component/my_stack_view.dart';
import 'package:fluttercomponent/component/my_transform_view.dart';
import 'package:fluttercomponent/component/my_wrap_view.dart';
import 'package:fluttercomponent/component/row_column_view.dart';
import 'package:fluttercomponent/component/single_child_scroller_view.dart';
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
var flexHandle =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  String title = params['title']?.first;
  return MyFlexView(title: title);
});
var rowAndColumnViewHandle =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  String title = params['title']?.first;
  return RowAndColumn(title: title);
});
var myWrapViewHandle =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  String title = params['title']?.first;
  return MyWrapView(title: title);
});
var myStackViewHandle =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  String title = params['title']?.first;
  return MyStackView(title: title);
});
var myAlignViewHandle =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  String title = params['title']?.first;
  return MyAlignView(title: title);
});
var myDecorateViewHandle =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  String title = params['title']?.first;
  return MyDecoratedBox(title: title);
});
var myAppBarViewHandle =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  String title = params['title']?.first;
  return MyAppBar(title: title);
});
var myTransformViewHandle =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  String title = params['title']?.first;
  return MyTransformView(title: title);
});
var myScaffoldViewHandle =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  String title = params['title']?.first;
  return MyScaffoldView(title: title);
});
var myClipViewHandle =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  String title = params['title']?.first;
  return MyClipView(title: title);
});
var mySingleChildScrollerViewHandle =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  String title = params['title']?.first;
  return MySingleChildScrollerView(title: title);
});
var myListViewHandle =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  String title = params['title']?.first;
  return MyListView(title: title);
});
var myListViewHandle1 =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  String title = params['title']?.first;
  return MyListView1(title: title);
});
var myListViewHandle2 =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  String title = params['title']?.first;
  return MyListView2(title: title);
});
var mySliverViewHandle =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  String title = params['title']?.first;
  return MySliverView(title: title);
});
var myScrollControlHandle =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  String title = params['title']?.first;
  return MyScrollControl(title: title);
});
var myScrollControlHandle1 =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  String title = params['title']?.first;
  return MyScrollControl1(title: title);
});var myImgViewHandle =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  String title = params['title']?.first;
  return MyImgView(title: title);
});
