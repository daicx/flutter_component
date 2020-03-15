import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 模板,方便快速创建一个StatefulWidget
class MySliverView extends StatefulWidget {
  final String title;

  MySliverView({this.title});

  @override
  State<StatefulWidget> createState() {
    return _MySliverView();
  }
}

class _MySliverView extends State<MySliverView> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: CustomScrollView(
        slivers: <Widget>[
          //AppBar，包含一个导航栏
          SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('sliver视图'),
              background: Image.asset(
                "./images/avatar.png",
                fit: BoxFit.cover,
              ),
            ),
          ),

          SliverPadding(
            padding: const EdgeInsets.all(8.0),
            sliver:  SliverGrid(
              //Grid
              gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, //Grid按两列显示
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 4.0,
              ),
              delegate:  SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  //创建子widget
                  return  Container(
                    alignment: Alignment.center,
                    color: Colors.cyan[100 * (index % 9)],
                    child:  Text('grid 元素 $index'),
                  );
                },
                childCount: 20,
              ),
            ),
          ),
          //List
           SliverFixedExtentList(
            itemExtent: 50.0,
            delegate:  SliverChildBuilderDelegate(
                (BuildContext context, int index) {
              //创建列表项
              return  Container(
                alignment: Alignment.center,
                color: Colors.lightBlue[100 * (index % 9)],
                child:  Text('list元素 $index'),
              );
            }, childCount: 50 //50个列表项
                ),
          ),
        ],
      ),
    );
  }
}
