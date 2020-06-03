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
  final _toDoList = <ToDo>[];

  @override
  void initState() {
    super.initState();
    _init();
    // TODO: DB から取得
    for (int i = 0; i < 20; i++) {
      _toDoList.add(ToDo(i, 'ToDo$i'));
    }
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
            Expanded(child: _buildToDoList()),
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

  Widget _buildToDoList() {
    return ListView.builder(
        itemCount: _toDoList.length,
        itemBuilder: (context, i) {
          var toDo = _toDoList[i];
          return _buildRow(toDo);
        });
  }

  Widget _buildRow(ToDo toDo) {
    return Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey))),
        child: ListTile(title: Text(toDo.title)));
  }
}

class ToDo {
  int id;
  String title;

  ToDo(int id, String title) {
    this.id = id;
    this.title = title;
  }
}
