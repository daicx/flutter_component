import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 模板,方便快速创建一个StatefulWidget
class MyScaffoldView extends StatefulWidget {
  final String title;

  MyScaffoldView({this.title});

  @override
  State<StatefulWidget> createState() {
    return _MyScaffoldView();
  }
}

class _MyScaffoldView extends State<MyScaffoldView> {
  int _selected = 0;
  String bodyContent;
  final List<String> _tabValues = [];
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _tabValues.addAll([
      '语文',
      '英语',
      '化学',
      '物理',
      '数学',
      '生物',
      '体育',
      '经济',
    ]);
    _controller = TabController(
      length: _tabValues.length,
      vsync: ScrollableState(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[IconButton(icon: Icon(Icons.share), onPressed: null)],
        bottom: getTabBar(),
      ),
      drawer: myDrawer(),
      bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          shape: CircularNotchedRectangle(), // 底部导航栏打一个圆形的洞
          child: Row(
            children: [
              IconButton(icon: Icon(Icons.home)),
              SizedBox(), //中间位置空出
              IconButton(icon: Icon(Icons.business)),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceAround, //均分底部导航栏横向空间
          ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: _onAdd),
      body: TabBarView(
        controller: _controller,
        children: _tabValues.map((f) {
          return Center(
            child: Text(f),
          );
        }).toList(),
      ),
    );
  }

  TabBar getTabBar() {
    return TabBar(
      tabs: _tabValues.map((e) {
        return Text(e);
      }).toList(),
      controller: _controller,
    );
  }

  void onItemTrap(int index) {
    setState(() {
      _selected = index;
    });
  }

  void _onAdd() {}

  Drawer myDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              child: Text("抽屉头部"),
              decoration: BoxDecoration(color: Colors.green)),
          ListTile(
            title: Text('第一行'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('第二行'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
