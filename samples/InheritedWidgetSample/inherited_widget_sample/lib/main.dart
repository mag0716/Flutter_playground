import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample of InheritedWidget',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CounterProvider(
          counter: Counter(0),
          child: MyHomePage(title: 'Sample of InheritedWidget')),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  CounterProvider counterProvider;

  void _incrementCounter() {
    setState(() {
      counterProvider.counter.increment();
    });
  }

  @override
  Widget build(BuildContext context) {
    counterProvider = CounterProvider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${counterProvider.counter.count}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

class CounterProvider extends InheritedWidget {
  CounterProvider({Key key, Widget child, this.counter})
      : super(key: key, child: child);

  static CounterProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CounterProvider>();
  }

  final Counter counter;

  @override
  bool updateShouldNotify(CounterProvider oldWidget) =>
      counter != oldWidget.counter;
}

class Counter {
  Counter(this.count);

  int count;

  increment() {
    count++;
  }
}
