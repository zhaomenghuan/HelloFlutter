import 'package:flutter/material.dart';
import 'package:slide_transition_page_route/slide_transition_page_route.dart';

import 'ui/Text.dart';
import 'ui/Image.dart';
import 'ui/Button.dart';
import 'ui/ListView.dart';
import 'ui/TabBar.dart';
import 'ui/Charts.dart';


class UIPage extends StatelessWidget {
  var data = [
    {"title": "Text", "subtitle": "文本"},
    {"title": "Button", "subtitle": "按钮"},
    {"title": "Image", "subtitle": "图片"},
    {"title": "ListView", "subtitle": "列表"},
    {"title": "TabBar", "subtitle": "选项卡"},
    {"title": "Charts", "subtitle": "图表"}
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
                  // 配合路由 routes 使用
                  // Navigator.pushNamed(context, '${data[index]['routeName']}');

                  Widget widget;
                  switch(data[index]['title']) {
                    case "Text":
                      widget = new TextPage();
                      break;
                    case "Image":
                      widget = new ImagePage();
                      break;
                    case "Button":
                      widget = new ButtonPage();
                      break;
                    case "ListView":
                      widget = new ListViewPage();
                      break;
                    case "TabBar":
                      widget = new TabBarPage();
                      break;
                    case "Charts":
                      widget = new ChartsPage();
                      break;
                  }
                  Navigator.push(context, SlideLeftRoute(widget: widget));
                });
          })
    );
  }
}