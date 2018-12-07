import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';

import 'package:flutter_appavailability/flutter_appavailability.dart';

/**
 * 设备应用
 */
class DeviceAppsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new AppPageState();
}

class AppPageState extends State<StatefulWidget> {
  List<Map<String, String>> installedApps;

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> getApps() async {
    List<Map<String, String>> _installedApps;

    if (Platform.isAndroid) {
      _installedApps = await AppAvailability.getInstalledApps();
    }

    setState(() {
      installedApps = _installedApps;
    });
  }

  @override
  Widget build(BuildContext context) {
    getApps();

    return new Scaffold(
        appBar: new AppBar(title: new Text('设备应用'), centerTitle: true),
        body: ListView.builder(
          itemCount: installedApps == null ? 0 : installedApps.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(installedApps[index]["app_name"]),
              trailing: IconButton(
                  icon: const Icon(Icons.open_in_new),
                  onPressed: () {
                    AppAvailability.launchApp(installedApps[index]["package_name"]).then((_) {
                      print("App ${installedApps[index]["app_name"]} launched!");
                    }).catchError((err) {
                      Scaffold.of(context).showSnackBar(SnackBar(
                          content: Text("App ${installedApps[index]["app_name"]} not found!")
                      ));
                    });
                  }
              ),
            );
          },
        ));
  }
}
