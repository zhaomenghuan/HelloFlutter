import 'package:flutter/material.dart';

class UIPage extends StatelessWidget {
  var data = [
    {"title": "Text", "subtitle": "文本", "routeName": "/Text"},
    {"title": "Image", "subtitle": "图片", "routeName": "/Image"},
    {"title": "Button", "subtitle": "按钮", "routeName": "/Button"},
    {"title": "ListView", "subtitle": "列表", "routeName": "/ListView"},
    {"title": "TabBar", "subtitle": "选项卡", "routeName": "/TabBar"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, int index) {
            return new ListTile(
                title: new Text('${data[index]['title']}'),
                subtitle: new Text('${data[index]['subtitle']}'),
                onTap: () {
                  Navigator.pushNamed(
                      context, '${data[index]['routeName']}');
                });
          })
    );
  }
}