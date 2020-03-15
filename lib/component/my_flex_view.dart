import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyFlexView extends StatefulWidget {
  final String title;

  MyFlexView({this.title});

  @override
  State<StatefulWidget> createState() {
    return _MyFlexView();
  }
}

class _MyFlexView extends State<MyFlexView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  height: 50,
                  color: Colors.green,
                  child: Text("1/3"),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 50,
                  color: Colors.red,
                  child: Text('2/3'),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: SizedBox(
              height: 500,
              child: Flex(
                direction: Axis.vertical,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.blue,
                      child: Text("导航栏"),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.black45,
                      child: Text('内容条目'),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.amber,
                      child: Text('菜单栏'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
