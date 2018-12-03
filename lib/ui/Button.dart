import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('按钮'), centerTitle: true),
        body: new Builder(builder: (context) {
          return new Center(
            child: new GestureDetector(
              child: new Text('显示SnackBar'),
              onTap: () {
                final snackBar =
                new SnackBar(content: new Text('这是一个SnackBar'));
                Scaffold.of(context).showSnackBar(snackBar);
              }
            ),
          );
        }));
  }
}
