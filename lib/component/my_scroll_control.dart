import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 模板,方便快速创建一个StatefulWidget
class MyScrollControl extends StatefulWidget {
  final String title;

  MyScrollControl({this.title});

  @override
  State<StatefulWidget> createState() {
    return _MyScrollControl();
  }
}

class _MyScrollControl extends State<MyScrollControl> {
  ScrollController _controller = ScrollController();
  bool showToTopBtn = false; //是否显示“返回到顶部”按钮

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      if (_controller.offset < 1000 && showToTopBtn) {
        setState(() {
          showToTopBtn = false;
        });
      } else if (_controller.offset >= 1000 && showToTopBtn == false) {
        setState(() {
          showToTopBtn = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Scrollbar(
          child: ListView.builder(
              itemCount: 100,
              itemExtent: 50,
              controller: _controller,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('$index'),
                );
              })),
      floatingActionButton: !showToTopBtn
          ? null
          : FloatingActionButton(
              child: Icon(Icons.arrow_upward),
              onPressed: () {
                _controller.animateTo(.0,
                    duration: Duration(microseconds: 200), curve: Curves.ease);
              },
            ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
