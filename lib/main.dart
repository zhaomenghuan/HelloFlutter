import 'package:flutter/material.dart';

import 'Text.dart';
import 'Image.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // 应用名称
        title: 'Hello Flutter',
        // 主题
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // 路由首页
        home: new Builder(builder: (context) {
          return new Scaffold(
            appBar: new AppBar(
              title: new Text('Hello Flutter'),
            ),
            body: new ListView(
              children: <Widget>[
                new ListTile(
                    title: new Text('Text'),
                    subtitle: new Text('文本'),
                    onTap: () {
                      Navigator.push(context, new MaterialPageRoute(
                          builder: (BuildContext context) {
                        return new TextPage();
                      }));
                    }),
                new ListTile(
                    title: new Text('Image'),
                    subtitle: new Text('图片'),
                    onTap: () {
                      Navigator.push(context, new MaterialPageRoute(
                          builder: (BuildContext context) {
                            return new ImagePage();
                          }));
                    }),
                new ListTile(
                    title: new Text('Button'), subtitle: new Text('按钮')),

              ],
            ),
          );
        }));
  }
}
