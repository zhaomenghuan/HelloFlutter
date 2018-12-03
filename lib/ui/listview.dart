import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('列表'), centerTitle: true),
      body: new ListView(
        children: <Widget>[
          new ListTile(
              title: new Text('Title 1'), subtitle: new Text('subtitle-1')),
          new ListTile(
              title: new Text('Title 2'), subtitle: new Text('subtitle-2'))
        ],
      ),
    );
  }
}