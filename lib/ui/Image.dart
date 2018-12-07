import 'package:flutter/material.dart';

import 'package:hello_flutter/BasePage.dart';

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: '图片',
        body: ListView(
          padding: EdgeInsets.all(10),
          children: <Widget>[
            Text('使用 Image.asset 从 asset 中加载图片'),
            Image.asset("images/avatar.png"),
            Text('使用 NetworkImage 从网络加载图片'),
            Image(image: NetworkImage("https://avatars2.githubusercontent.com/u/13075561?s=460&v=4"), width: 100.0),
            Text('使用 Image.network 从网络加载图片'),
            Image.network("https://avatars2.githubusercontent.com/u/13075561?s=460&v=4", width: 100.0)
          ],
        ));
  }
}
