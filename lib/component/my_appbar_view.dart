import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 模板,方便快速创建一个StatefulWidget
class MyAppBar extends StatefulWidget {
  final String title;

  MyAppBar({this.title});

  @override
  State<StatefulWidget> createState() {
    return _MyAppBar();
  }
}

class _MyAppBar extends State<MyAppBar> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(300),
        child: AppBar(
          title: Row(
            children: <Widget>[
              Text("自定义导航栏"),
              Expanded(
                child: Icon(Icons.access_alarm),
                flex: 1,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar( // 底部导航
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: '短视频'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: '我的'),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
        onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton( //悬浮按钮
          child: Icon(Icons.add),
          onPressed:_onAdd
      ),
    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  void _onAdd(){
  }
}
