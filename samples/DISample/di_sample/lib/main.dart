import 'package:disample/data_state.dart';
import 'package:disample/data_state_notifier.dart';
import 'package:disample/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

void main() {
  // TODO: flavor 毎に利用する repository を変更したい
  runApp(MultiProvider(
      providers: [Provider(create: (_) => Repository())], child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'DI Sample',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: StateNotifierProvider<DataStateNotifier, DataState>(
            create: (context) => DataStateNotifier(),
            child: Scaffold(
              appBar: AppBar(title: Text("DI Sample")),
              body: Center(child: _Page()),
              floatingActionButton: _FetchButton(),
            )));
  }
}

class _Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      '${context.watch<DataState>().data}',
      style: Theme.of(context).textTheme.headline4,
    );
  }
}

class _FetchButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => context.read<DataStateNotifier>().fetchData(),
      tooltip: 'Fetch',
      child: const Icon(Icons.refresh),
    );
  }
}
