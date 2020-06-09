import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample of JSON parser',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Page(title: 'Sample of JSON parser'),
    );
  }
}

class Page extends StatelessWidget {
  Page({Key key, this.title}) : super(key: key);
  final Map<String, dynamic> _json = {"id": 1, "title": "title1"};
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Manual Parse : ${Data.fromJson(_json).toString()}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}

class Data {
  static final keyId = 'id';
  static final keyTitle = 'title';

  final int id;
  final String title;

  Data({this.id, this.title});

  Data.fromJson(Map<String, dynamic> json)
      : id = json[keyId],
        title = json[keyTitle];

  Map<String, dynamic> toJson() => {keyId: id, keyTitle: title};

  @override
  String toString() {
    return toJson().toString();
  }
}
