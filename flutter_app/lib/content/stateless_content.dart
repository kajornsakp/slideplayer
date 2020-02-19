import 'package:flutter/material.dart';
import 'package:flutter_slides/widget/ExampleStatelessWidget.dart';

class StatelessContent extends StatelessWidget {

  StatelessContent({Key key, Map contentMap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: ExampleStatelessWidget());
  }
}
