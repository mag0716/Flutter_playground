import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

final counterProvider = ChangeNotifierProvider((ref) => Counter());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample of Riverpod',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Sample of Riverpod")),
        body: Center(child: _Text()),
        floatingActionButton: _IncrementButton(),
      ),
    );
  }
}

class _Text extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          'You have pushed the button this many times:',
        ),
        Text(
          '${useProvider(counterProvider).count}',
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
      onPressed: () => counterProvider.read(context).increment(),
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
  }
}

class Counter extends ChangeNotifier {
  var _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}
