import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text"),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          Text('Hello world'),
          Text("Hello world! I'm Jack. "*4,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text("Hello world", textScaleFactor: 1.5),
          Text("Hello world",
            style: TextStyle(
                color: Colors.blue,
                fontSize: 18.0,
                height: 1.2,
                fontFamily: "Courier",
                background: new Paint()..color=Colors.yellow,
                decoration:TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dashed
            ),
          ),

          Text.rich(TextSpan(
              children: [
                TextSpan(
                    text: "Home: "
                ),
                TextSpan(
                    text: "https://flutterchina.club",
                    style: TextStyle(
                        color: Colors.blue
                    )
                ),
              ]
          ))
        ],

      ),
    );
  }
}