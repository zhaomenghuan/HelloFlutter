import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';

import 'package:flutter_appavailability/flutter_appavailability.dart';

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
      print(await AppAvailability.checkAvailability("com.android.chrome"));
      // Returns: Map<String, String>{app_name: Chrome, package_name: com.android.chrome, versionCode: null, version_name: 55.0.2883.91}
      print(await AppAvailability.isAppEnabled("com.android.chrome"));
      // Returns: true
    }

    setState(() {
      installedApps = _installedApps;
    });
  }

  @override
  Widget build(BuildContext context) {
    getApps();

    return new Scaffold(
        appBar: new AppBar(title: new Text('应用管理'), centerTitle: true),
        body: ListView.builder(
          itemCount: installedApps == null ? 0 : installedApps.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(installedApps[index]["app_name"]),
              trailing: IconButton(
                  icon: const Icon(Icons.open_in_new),
                  onPressed: () {
                    Scaffold.of(context).hideCurrentSnackBar();
                    AppAvailability.launchApp(installedApps[index]["package_name"]).then((_) {
                      print("App ${installedApps[index]["app_name"]} launched!");
                    }).catchError((err) {
                      Scaffold.of(context).showSnackBar(SnackBar(
                          content: Text("App ${installedApps[index]["app_name"]} not found!")
                      ));
                      print(err);
                    });
                  }
              ),
            );
          },
        ));
  }
}
