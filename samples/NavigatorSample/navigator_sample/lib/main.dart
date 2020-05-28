import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'sample of Navigator',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
          // This makes the visual density adapt to the platform that you run
          // the app on. For desktop platforms, the controls will be smaller and
          // closer together (more dense) than on mobile platforms.
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => FirstRoute(),
          '/second': (context) => SecondRoute()
        });
  }
}

class FirstRoute extends StatelessWidget {
  var _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(title: Text('First Route')),
        body: Center(
            child: RaisedButton(
          child: Text('Open route'),
          onPressed: () {
            _navigateForResult(context);
          },
        )));
  }

  _navigateForResult(BuildContext context) async {
    final result = await Navigator.pushNamed(context, '/second',
        arguments: ScreenArguments('title', 'message'));
    if (result is bool && result) {
      _scaffoldKey.currentState
          .showSnackBar(SnackBar(content: Text('received result')));
    }
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ScreenArguments args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        appBar: AppBar(title: Text('Second Route')),
        body: Center(
            child: Column(mainAxisSize: MainAxisSize.min, children: [
          Text(args.message),
          RaisedButton(
            child: Text('Go back!'),
            onPressed: () {
              Navigator.pop(context, true);
            },
          )
        ])));
  }
}

class ScreenArguments {
  final String title;
  final String message;

  ScreenArguments(this.title, this.message);
}
