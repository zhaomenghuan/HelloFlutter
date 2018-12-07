import 'package:flutter/material.dart';
import 'package:slide_transition_page_route/slide_transition_page_route.dart';

import 'package:hello_flutter/example/list_to_detail/List.dart';

class ExamplePage extends StatelessWidget {
  var data = [
    {"title": "列表到详情", "subtitle": "dio + flutter_html + cnode API"}
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
                    Navigator.push(
                        context, SlideLeftRoute(widget: ListPage()));
                  });
            }));
  }
}
