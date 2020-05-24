import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Flutter layout concepts',
      home: Scaffold(
          appBar: AppBar(title: Text('Basic Flutter layout concepts')),
          body: MyWidget()),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(Icons.account_circle, size: 50),
      ),
      Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Flutter McFlutter',
                style: Theme.of(context).textTheme.headline),
            Text('Experienced Developer')
          ]),
    ]);
  }
}
