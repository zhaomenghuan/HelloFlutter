import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:html/dom.dart' as dom;

import 'package:hello_flutter/BasePage.dart';

class DetailPage extends StatefulWidget {
  final String id;
  final String title;
  DetailPage({this.id, this.title});

  @override
  State<StatefulWidget> createState() => DetailPageState();
}

class DetailPageState extends State<DetailPage> {
  Dio dio;
  Response response;
  String data = "";

  Future _getDatas() async {
    dio = new Dio();
    response = await dio
        .get("https://cnodejs.org/api/v1/topic/${widget.id}");
    setState(() {
      data = response.data["data"]["content"];
    });
  }

  @override
  void initState() {
    _getDatas();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: widget.title,
        body: SingleChildScrollView(
            child: Html(
                data: data,
                //Optional parameters:
                padding: EdgeInsets.all(8.0),
                onLinkTap: (url) {
                  print("Opening $url...");
                },
                customRender: (node, children) {
                  if (node is dom.Element) {
                    switch (node.localName) {
                      case "custom_tag":
                        return Column(children: children);
                    }
                  }
                })));
  }
}
