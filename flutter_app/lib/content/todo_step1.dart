import 'package:flutter/material.dart';
import 'package:flutter_slides/widget/ExampleStatefulWidget.dart';
import 'package:flutter_slides/widget/ExampleStatelessWidget.dart';
import 'package:flutter_slides/widget/todo_item.dart';

class Todo1Step1 extends StatelessWidget {

  Todo1Step1({Key key, Map contentMap}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        'My Tasks',
        style: TextStyle(
            color: Colors.black,
            fontSize: 24.0,
            fontWeight: FontWeight.bold),
      ),
      centerTitle: false,
      elevation: 0.0,
    );
  }
}

class Todo1Step2 extends StatelessWidget {

  Todo1Step2({Key key, Map contentMap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Checkbox(value: false, onChanged: (bool value) {}),
          Text("TODO")
        ],
      ),
    );
  }
}

class Todo1Step3 extends StatefulWidget {

  Todo1Step3({Key key, Map contentMap}) : super(key: key);

  @override
  _TodoItemState createState() => _TodoItemState();
}

class _TodoItemState extends State<Todo1Step3> {

  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Checkbox(
            value: this.checked,
            onChanged: (bool value) {
              setState(() {
                checked = value;
              });
            },
          ),
          Text("TODO")
        ],
      ),
    );
  }
}

class Todo1Step4 extends StatefulWidget {

  Todo1Step4({Key key, Map contentMap}) : super(key: key);

  @override
  _TodoItemState4 createState() => _TodoItemState4();
}

class _TodoItemState4 extends State<Todo1Step4> {
  final List<Todo> todos = [
    Todo("Hello", "World"),
    Todo("Hello", "World"),
    Todo("Hello", "World"),
    Todo("Hello", "World"),
    Todo("Hello", "World"),
    Todo("Hello", "World"),
    Todo("Hello", "World"),
    Todo("Hello", "World"),
    Todo("Hello", "World"),
    Todo("Hello", "World"),
    Todo("Hello", "World"),
    Todo("Hello", "World"),
    Todo("Hello", "World"),
    Todo("Hello", "World")
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: todos.length,
        separatorBuilder: (BuildContext context, int index) {
          return Divider(height: 1.0);
        },
        itemBuilder: (BuildContext context, int index) {
          return new TodoItem(todos[index]);
        });
  }
}