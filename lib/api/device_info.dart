import 'package:flutter/material.dart';

class DeviceInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // initPlatformState();
    return Scaffold(
        appBar: AppBar(
          title: Text("设备信息"),
          centerTitle: true
        ),
        body: Text(''));
  }

//  Future<void> initPlatformState() async {
//    DeviceInfoPlugin deviceInfo = await DeviceInfoPlugin();
//    // AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
//    print('Running on ${deviceInfo.androidInfo}');
//
//    // IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
//    // print('Running on ${iosInfo.utsname.machine}');
//  }
}
