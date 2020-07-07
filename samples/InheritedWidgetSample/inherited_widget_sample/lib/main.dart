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
      home: ParentWidget(
          child: Scaffold(
        appBar: AppBar(title: Text("Sample of InheritedWidget")),
        body: Center(child: _Text()),
        floatingActionButton: _IncrementButton(),
      )),
    );
  }
}

class ParentWidget extends StatefulWidget {
  ParentWidget({Key key, this.child, this.title}) : super(key: key);

  final Widget child;
  final String title;

  @override
  State<StatefulWidget> createState() => _ParentWidgetState(Counter(0));
}

class _ParentWidgetState extends State<ParentWidget> {
  _ParentWidgetState(this.counter);

  final Counter counter;

  void incrementCounter() {
    setState(() {
      counter.increment();
    });
  }

  @override
  Widget build(BuildContext context) {
    return _InheritedWidget(
      child: widget.child,
      state: this,
    );
  }
}

class _InheritedWidget extends InheritedWidget {
  _InheritedWidget({Key key, @required Widget child, @required this.state})
      : super(key: key, child: child);

  final _ParentWidgetState state;

  static _InheritedWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<_InheritedWidget>();
  }

  @override
  bool updateShouldNotify(_InheritedWidget oldWidget) {
    return true;
  }
}

class _Text extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _ParentWidgetState parentWidgetState =
        _InheritedWidget.of(context).state;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'You have pushed the button this many times:',
        ),
        Text(
          '${parentWidgetState.counter.count}',
          style: Theme.of(context).textTheme.headline4,
        ),
      ],
    );
  }
}

class _IncrementButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _ParentWidgetState parentWidgetState =
        _InheritedWidget.of(context).state;
    return FloatingActionButton(
      onPressed: parentWidgetState.incrementCounter,
      tooltip: 'Increment',
      child: Icon(Icons.add),
    );
  }
}

class Counter {
  Counter(this.count);

  int count;

  increment() {
    count++;
  }
}
