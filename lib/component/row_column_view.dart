import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowAndColumn extends StatefulWidget {
  final String title;

  RowAndColumn({this.title});

  @override
  State<StatefulWidget> createState() {
    return _RowAndColumn();
  }
}

class _RowAndColumn extends State<RowAndColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.blue,
                    child: Text("1行"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.blue,
                    child: Text("2行"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.blue,
                    child: Text("3行"),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Container(
                    height: 200,
                    width: 50,
                    color: Colors.green,
                    child: Text('1列'),
                  ),
                ),Padding(
                  padding: EdgeInsets.all(5),
                  child: Container(
                    height: 200,
                    width: 50,
                    color: Colors.green,
                    child: Text('2列'),
                  ),
                ),Padding(
                  padding: EdgeInsets.all(5),
                  child: Container(
                    height: 200,
                    width: 50,
                    color: Colors.green,
                    child: Text('3列'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
