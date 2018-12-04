import 'package:flutter/material.dart';

class TabBarPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TabBarPage();
  }
}

class Choice {
  const Choice({this.icon, this.title});

  final String title;
  final IconData icon;
}

class _TabBarPage extends State<TabBarPage> {
  List<Choice> choices = const <Choice>[
    const Choice(title: "CAR", icon: Icons.directions_car),
    const Choice(title: "PRINT", icon: Icons.print),
    const Choice(title: "ANDROID", icon: Icons.android),
    const Choice(title: "MAP", icon: Icons.map),
    const Choice(title: "PHONE", icon: Icons.phone),
    const Choice(title: "ALARMS", icon: Icons.access_alarms),
    const Choice(title: "BLUETOOTH", icon: Icons.bluetooth),
  ];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new DefaultTabController(
        length: choices.length,
        child: new Scaffold(
          appBar: new AppBar(
            title: new Text("选项卡"),
            centerTitle: true,
            bottom: new TabBar(
              isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 2.0,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: choices.map((Choice c) {
                return new Tab(
                  text: c.title,
                  icon: new Icon(c.icon),
                );
              }).toList(),
            )
          ),
          body: new TabBarView(
            children: choices.map((Choice c) {
              return new Padding(
                padding: EdgeInsets.all(10.0),
                child: new Card(
                  elevation: 10.0,
                  child: new Center(
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Icon(
                          c.icon,
                          size: 100.0,
                          color: Colors.blue,
                        ),
                        new Text(
                          c.title,
                          style: new TextStyle(color: Colors.blue, fontSize: 30.0),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
