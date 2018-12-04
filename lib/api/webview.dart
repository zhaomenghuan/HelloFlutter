import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

import '../BasePage.dart';

class WebViewPage extends StatelessWidget {
  final flutterWebviewPlugin = new FlutterWebviewPlugin();
//  flutterWebViewPlugin.launch(
//    selectedUrl,
//    rect: Rect.fromLTWH(0.0, 0.0, MediaQuery.of(context).size.width, 300.0),
//    userAgent: kAndroidUserAgent,
//  );

  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: 'Webview',
        content: Wrap());
  }
}
