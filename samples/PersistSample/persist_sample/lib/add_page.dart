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
                  _addToDo(_titleController.text);
                  Navigator.pop(context);
                },
                child: const Text('ADD'))
          ],
        )));
  }

  void _addToDo(String title) async {
    TodoRepository repository = await TodoRepository.getInstance();
    await repository.saveToDo(ToDo(null, title));
    await repository.saveLastAddDatetime();
  }
}
