import 'package:flutter/material.dart';
import 'package:persistsample/add_page.dart';
import 'package:persistsample/todo.dart';
import 'package:persistsample/todo_repository.dart';

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
  String _lastAddDatetimeText;
  final _toDoList = <ToDo>[];

  @override
  void initState() {
    super.initState();
    _init();
  }

  void _init() async {
    var repository = await TodoRepository.getInstance();
    var toDoList = await repository.loadToDo();
    var lastAddDatetime = repository.loadLastAddDatetime();
    setState(() {
      _toDoList.addAll(toDoList);

      if (lastAddDatetime != 0) {
        _lastAddDatetimeText =
            DateTime.fromMicrosecondsSinceEpoch(lastAddDatetime)
                .toIso8601String();
      } else {
        _lastAddDatetimeText = "no data.";
      }
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
        onPressed: () =>
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return new AddToDoPage();
        })),
        tooltip: 'Add',
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
