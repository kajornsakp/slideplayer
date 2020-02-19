import 'package:flutter/material.dart';

class ExampleStatefulWidget extends StatefulWidget {
  @override
  _ExampleStatefulWidgetState createState() => _ExampleStatefulWidgetState();
}

class _ExampleStatefulWidgetState extends State<ExampleStatefulWidget> {

  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        color: Theme.of(context).primaryColor,
        child: Text("$number", style: TextStyle(color: Colors.white),),
        onPressed: () {
          setState(() {
            number += 1;
          });
        },
      ),
    );
  }
}
