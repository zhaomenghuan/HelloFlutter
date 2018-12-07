import 'package:flutter/material.dart';
import 'package:device_info/device_info.dart';

class DeviceInfoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DeviceInfoPageState();
}

class DeviceInfoPageState extends State<DeviceInfoPage> {
  AndroidDeviceInfo androidInfo;

  @override
  void initState() {
    initPlatformState();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> deviceInfoView = [];

    if (androidInfo != null) {
      deviceInfoView = <Widget>[
        Text('baseOS version: ${androidInfo.version.baseOS}'),
        Text('codename version: ${androidInfo.version.codename}'),
        Text('incremental version: ${androidInfo.version.incremental}'),
        Text('previewSdkInt version: ${androidInfo.version.previewSdkInt}'),
        Text('release version: ${androidInfo.version.release}'),
        Text('sdkInt version: ${androidInfo.version.sdkInt}'),
        Text('securityPatch version: ${androidInfo.version.securityPatch}'),
        Text('board: ${androidInfo.board}'),
        Text('bootloader: ${androidInfo.bootloader}'),
        Text('brand: ${androidInfo.brand}'),
        Text('manufacturer: ${androidInfo.manufacturer}'),
        Text('device: ${androidInfo.device}'),
        Text('display: ${androidInfo.display}'),
        Text('fingerprint: ${androidInfo.fingerprint}'),
        Text('hardware: ${androidInfo.hardware}'),
        Text('host: ${androidInfo.host}'),
        Text('id: ${androidInfo.id}'),
        Text('model: ${androidInfo.model}'),
        Text('product: ${androidInfo.product}'),
        Text('tags: ${androidInfo.tags}'),
        Text('type: ${androidInfo.type}'),
        Text('isPhysicalDevice: ${androidInfo.isPhysicalDevice}'),
        Text('androidId: ${androidInfo.androidId}'),
      ];
    }

    return Scaffold(
        appBar: AppBar(title: Text("设备信息"), centerTitle: true),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: deviceInfoView,
          ),
        ));
  }

  Future<void> initPlatformState() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    androidInfo = await deviceInfo.androidInfo;
  }
}
