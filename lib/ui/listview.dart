import 'package:flutter/material.dart';

import '../BasePage.dart';

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: '列表',
      content: new ListView(
        children: <Widget>[
          new ListTile(
              title: new Text('Title 1'), subtitle: new Text('subtitle-1')),
          new ListTile(
              title: new Text('Title 2'), subtitle: new Text('subtitle-2')),
          new ListTile(
              title: new Text('Title 3'), subtitle: new Text('subtitle-3'))
        ],
      )
    );
  }
}