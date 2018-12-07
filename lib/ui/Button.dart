import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:hello_flutter/BasePage.dart';

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: '按钮',
        body: Column(
          children: <Widget>[
            // 关闭按钮
            new CloseButton(),
            // 返回按钮
            new BackButton(),
            // 悬浮按钮
            new FloatingActionButton(onPressed: () {
              print('FloatingActionButton');
            }),
            // 图片按钮
            new IconButton(
                icon: Icon(Icons.ac_unit),
                onPressed: () {
                  print('IconButton');
                }),
            // 扁平化按钮
            new FlatButton(
                // 字体颜色
                textColor: Colors.white,
                // 背景颜色
                color: Colors.blue,
                // 文字
                child: new Text('FlatButton'),
                // 扁平化按钮
                onPressed: () {
                  print('Click FlatButton');
                  showToast('扁平化按钮');
                }),
            // 具有阴影效果的按钮
            new RaisedButton(
                // 字体颜色
                textColor: Colors.white,
                // 背景颜色
                color: Colors.blue,
                // 波纹颜色
                splashColor: Colors.blueGrey,
                child: new Text('RaisedButton'),
                onPressed: () {
                  print('Click RaisedButton');
                  showToast('具有阴影效果的按钮');
                }),
            new RawMaterialButton(
                padding: EdgeInsets.all(7.0),
                child: new Text('RawMaterialButton'),
                onPressed: () {
                  print('RawMaterialButton');
                })
          ],
        ));
  }

  dynamic showToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM);
  }
}
