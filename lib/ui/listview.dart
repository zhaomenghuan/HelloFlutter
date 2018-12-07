import 'package:flutter/material.dart';

import 'package:hello_flutter/BasePage.dart';

import 'package:dio/dio.dart';

class ListViewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ListViewPageState();
}

class ListViewPageState extends State<ListViewPage> {
  Dio dio;
  Response response;
  var data = [];

  Future _getDatas() async {
    dio = new Dio();
    response = await dio.get("https://cnodejs.org/api/v1/topics", data: {"page": 1, "limit": 10});
    setState(() {
      data = response.data["data"];
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
        title: '列表',
        body: new ListView.builder(
            reverse: true,
            itemCount: data.length,
            itemBuilder: (context, index) => new ListTile(
                leading: new Image.network('${data[index]["author"]["avatar_url"]}', width: 50),
                title: new Text('${data[index]["title"]}', maxLines: 2, overflow: TextOverflow.ellipsis),
                subtitle: new Text(
                    '${data[index]["reply_count"]}/${data[index]["visit_count"]}'))));
  }
}
