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
          body: Container(
            child: MyWidget(),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 1.0,
              ),
            ),
          ),
        ));
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(children: [
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
          ]),
          SizedBox(height: 8),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text('123 Main Street.'),
            Text('(415) 555-0198'),
          ]),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.accessibility, size: 50),
              Icon(Icons.timer, size: 50),
              Icon(Icons.phone_android, size: 50),
              Icon(Icons.phone_iphone, size: 50),
            ],
          ),
        ]);
  }
}
