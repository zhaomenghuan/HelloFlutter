import 'package:flutter/material.dart';

import '../BasePage.dart';

class TextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: '文本',
        content: Wrap(spacing: 8.0, runSpacing: 4.0, children: <Widget>[
          Text('Hello world'),
          Text(
            "Hello world! I'm Jack. " * 4,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text("Hello world", textScaleFactor: 1.5),
          Text(
            "Hello world",
            style: TextStyle(
                color: Colors.blue,
                fontSize: 18.0,
                height: 1.2,
                fontFamily: "Courier",
                background: new Paint()..color = Colors.yellow,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dashed),
          ),
          Text.rich(TextSpan(children: [
            TextSpan(text: "Home: "),
            TextSpan(
                text: "https://flutter.io",
                style: TextStyle(color: Colors.blue)),
          ]))
        ]));
  }
}
