import 'package:flutter/material.dart';

import 'ui.dart';
import 'api.dart';
import 'example.dart';

void main() => runApp(HelloFlutterApp());

class HelloFlutterApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new HelloFlutterState();
}

class HelloFlutterState extends State<HelloFlutterApp> {
  int _currentIndex = 0;
  final List<Widget> _children = [UIPage(), APIPage(), ExamplePage()];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        // 应用名称
        title: 'Hello Flutter',
        // 主题
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // 路由首页
        home: new Builder(builder: (context) {
          return new Scaffold(
            appBar: new AppBar(title: Text('Hello Flutter'), centerTitle: true),
            body: _children[_currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: (int index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                    title: new Text("组件"), icon: new Icon(Icons.code)),
                BottomNavigationBarItem(
                    title: new Text("接口"), icon: new Icon(Icons.memory)),
                BottomNavigationBarItem(
                    title: new Text("模板"), icon: new Icon(Icons.dashboard)),
              ],
            ),
          );
        }));
  }
}
