import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new WebviewScaffold(
        url: "https://www.baidu.com",
        appBar: new AppBar(
          title: new Text("网页视图"),
          centerTitle: true,
        ));
  }
}
