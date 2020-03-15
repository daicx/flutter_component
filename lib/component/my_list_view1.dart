import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 模板,方便快速创建一个StatefulWidget
class MyListView1 extends StatefulWidget {
  final String title;

  MyListView1({this.title});

  @override
  State<StatefulWidget> createState() {
    return _MyListView1();
  }
}

class _MyListView1 extends State<MyListView1> {
  @override
  Widget build(BuildContext context) {
    Widget divider1=Divider(color: Colors.red,);
    Widget divider2=Divider(color: Colors.green);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.separated(
          itemCount: 100,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(title: Text("$index"));
          },
        //分割器构造器
        separatorBuilder: (BuildContext context, int index) {
          return index%2==0?divider1:divider2;
        },
      ),
    );
  }
}
