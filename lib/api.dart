import 'package:flutter/material.dart';
import 'package:slide_transition_page_route/slide_transition_page_route.dart';

import 'api/device_info.dart';
import 'api/device_apps.dart';

class APIPage extends StatelessWidget {
  var data = [
    {"title": "DeviceApps", "subtitle": "设备应用", "routeName": "/api/DeviceApps"}
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
                  // Navigator.pushNamed(context, '${data[index]['routeName']}');
                  Navigator.push(context, SlideLeftRoute(widget: DeviceAppsPage()));
                });
          })
    );
  }
}