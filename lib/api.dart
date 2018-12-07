import 'package:flutter/material.dart';
import 'package:slide_transition_page_route/slide_transition_page_route.dart';

import 'api/clipboard.dart';
import 'api/device_info.dart';
import 'api/device_apps.dart';
import 'api/webview.dart';

// https://github.com/facundomedica/fast_qr_reader_view

class APIPage extends StatelessWidget {
  var data = [
    {"title": "Clipboard", "subtitle": "剪贴板"},
    {"title": "DeviceInfo", "subtitle": "设备信息"},
    {"title": "DeviceApps", "subtitle": "设备应用"},
    {"title": "WebView", "subtitle": "网页视图"}
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
                  Widget widget;
                  switch(data[index]['title']) {
                    case "Clipboard":
                      widget = new ClipboardPage();
                      break;
                    case "DeviceInfo":
                      widget = new DeviceInfoPage();
                      break;
                    case "DeviceApps":
                      widget = new DeviceAppsPage();
                      break;
                    case "WebView":
                      widget = new WebViewPage();
                      break;
                  }
                  Navigator.push(context, SlideLeftRoute(widget: widget));
                });
          })
    );
  }
}