import 'package:flutter/material.dart';

class BasePage extends StatelessWidget {
  final String title;
  final Widget content;

  BasePage({this.title, this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(this.title), centerTitle: true),
        body: this.content);
  }
}
