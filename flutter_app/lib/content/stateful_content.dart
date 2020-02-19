import 'package:flutter/material.dart';
import 'package:flutter_slides/widget/ExampleStatefulWidget.dart';
import 'package:flutter_slides/widget/ExampleStatelessWidget.dart';

class StatefulContent extends StatelessWidget {

  StatefulContent({Key key, Map contentMap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: ExampleStatefulWidget());
  }
}
