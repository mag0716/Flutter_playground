import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample of Provider',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChangeNotifierProvider<CounterModel>(
          create: (_) => CounterModel(),
          child: Scaffold(
            appBar: AppBar(title: Text("Sample of Provider")),
            body: Center(child: _Text()),
            floatingActionButton: _IncrementButton(),
          )),
    );
  }
}

class _Text extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          'You have pushed the button this many times:',
        ),
        Text(
          '${context.select((CounterModel counterModel) => counterModel.count)}',
          style: Theme.of(context).textTheme.headline4,
        ),
      ],
    );
  }
}

class _IncrementButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => context.read<CounterModel>().increment(),
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
  }
}

class CounterModel extends ChangeNotifier {
  int count = 0;

  void increment() {
    count++;
    notifyListeners();
  }
}

class Counter {
  Counter(this.count);

  int count;

  increment() {
    count++;
  }
}
