import 'package:flutter/material.dart';
import 'package:persistsample/todo.dart';
import 'package:persistsample/todo_repository.dart';

class AddToDoPage extends StatelessWidget {
  final _titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: new Text("Add ToDo"),
        ),
        body: new Center(
            child: new Column(
          children: <Widget>[
            TextField(
              controller: _titleController,
            ),
            RaisedButton(
                onPressed: () {
                  _addToDo(context, _titleController.text);
                },
                child: const Text('ADD'))
          ],
        )));
  }

  void _addToDo(BuildContext context, String title) async {
    TodoRepository repository = await TodoRepository.getInstance();
    await repository.saveToDo(ToDo(null, title));
    await repository.saveLastAddDatetime();

    Navigator.pop(context, true);
  }
}
