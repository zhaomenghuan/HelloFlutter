import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:hello_flutter/BasePage.dart';

/**
 * 剪切板
 */
class ClipboardPage extends StatelessWidget {
  Future<ClipboardData> getData() async {
    var clipboardData = await Clipboard.getData(Clipboard.kTextPlain);
    print(clipboardData.text);
    Fluttertoast.showToast(
        msg: "剪切板数据：" + clipboardData.text,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM);
    return clipboardData;
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: '剪切板',
        body: Center(
          child: Column(
            children: <Widget>[
              new FlatButton(
                // 字体颜色
                  textColor: Colors.white,
                  // 背景颜色
                  color: Colors.blue,
                  // 文字
                  child: new Text('复制到剪切板'),
                  // 扁平化按钮
                  onPressed: () {
                    Clipboard.setData(new ClipboardData(text: '测试数据'));
                  }),
              new FlatButton(
                // 字体颜色
                  textColor: Colors.white,
                  // 背景颜色
                  color: Colors.blue,
                  // 文字
                  child: new Text('获取剪切板数据'),
                  // 扁平化按钮
                  onPressed: () {
                    getData();
                  })
            ],
          ),
        ));
  }
}
