import 'package:flutter/material.dart';

class APIPage extends StatelessWidget {
  var data = [
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