import 'package:flutter/material.dart';

class AddToDoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: new Text("Add ToDO"),
        ),
        body: new Center(
            child: new Column(
          children: <Widget>[
            TextField(

            ),
            RaisedButton(onPressed: _addToDo, child: const Text('ADD'))
          ],
        )));
  }

  void _addToDo() {
    // TODO: DB に保存
  }
}
