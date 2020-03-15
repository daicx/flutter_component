import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MyGridView extends StatefulWidget {
  final String title;

  MyGridView({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyGridView();
  }
}

class _MyGridView extends State<MyGridView> {
  List<String> list = [];

  @override
  void initState() {
    list.addAll([
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,),
      ),
      body: StaggeredGridView.countBuilder(
        crossAxisCount: 4,
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) =>
           Container(
            color: Colors.green,
            child: Center(
              child: CircleAvatar(
                backgroundColor: Colors.white,
//                child: Text("21"),
                child: Text(list[index]),
              ),
            )),
        staggeredTileBuilder: (int index) =>
            StaggeredTile.count(2, index.isEven ? 2 : 1),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      ),
    );
  }
}