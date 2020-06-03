import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample of Persistence',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ToDoListPage(title: 'ToDo List'),
    );
  }
}

class ToDoListPage extends StatefulWidget {
  ToDoListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ToDoListPageState createState() => _ToDoListPageState();
}

class _ToDoListPageState extends State<ToDoListPage> {
  static String keyLastAddDatetime = "LastAddDatetime";
  String _lastAddDatetimeText;
  SharedPreferences _preferences;

  @override
  void initState() {
    super.initState();
    _init();
  }

  void _init() async {
    _preferences = await SharedPreferences.getInstance();
    var lastAddDatetime = _preferences.getInt(keyLastAddDatetime) ?? 0;
    setState(() {
      if (lastAddDatetime != 0) {
        _lastAddDatetimeText =
            DateTime.fromMicrosecondsSinceEpoch(lastAddDatetime)
                .toIso8601String();
      } else {
        _lastAddDatetimeText = "no data.";
      }
    });
  }

  void _updateLastAddDatetime() async {
    var now = DateTime.now().microsecondsSinceEpoch;
    await _preferences.setInt(keyLastAddDatetime, now);
    setState(() {
      _lastAddDatetimeText =
          DateTime.fromMicrosecondsSinceEpoch(now).toIso8601String();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Last Add Datetime:$_lastAddDatetimeText',
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _updateLastAddDatetime,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
