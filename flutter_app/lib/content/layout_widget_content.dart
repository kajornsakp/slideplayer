import 'dart:io';
import 'dart:math';

import 'package:flutter_slides/models/slides.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slides/utils/image_utils.dart' as ImageUtils;

class LayoutWidgetContent extends StatelessWidget {
  final double width;
  final double height;
  final String type;
  bool isPreview = false;

  LayoutWidgetContent({Key key, Map contentMap, bool isPreview})
      : this.width = contentMap['width'],
        this.height = contentMap['height'],
        this.type = contentMap['widget_type'],
        this.isPreview = isPreview,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isPreview) return Container();
    switch (type) {
      case 'container':
        return createContainer();
      case 'align':
        return createAlignContainer();
      case 'center':
        return Container(
            color: Colors.green[200],
            child: Center(
                child: Text("CENTER",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0))));
      case 'padding':
        return Card(
          elevation: 4.0,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Container(
              color: Colors.yellow[50],
              child: Text("Padding"),
            ),
          ),
        );
    }
  }

  Widget agodaCircle(Color color) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }

  List<Widget> circlesStack() {
    return <Widget>[
      Positioned(
        width: 40.0,
        height: 40.0,
        child: agodaCircle(Color(0xffff2938)),
      ),
      Positioned(
        left: 20.0,
        top: 20.0,
        width: 40.0,
        height: 40.0,
        child: agodaCircle(Color(0xfffdb812)),
      ),
      Positioned(
        left: 40.0,
        top: 40.0,
        width: 40.0,
        height: 40.0,
        child: agodaCircle(Color(0xff00b057)),
      ),
      Positioned(
        left: 60.0,
        top: 40.0,
        width: 40.0,
        height: 40.0,
        child: agodaCircle(Color(0xffaf38b1)),
      ),
      Positioned(
        left: 80.0,
        top: 20.0,
        width: 40.0,
        height: 40.0,
        child: agodaCircle(Color(0xff00aae0)),
      ),
      Positioned(
        left: 100.0,
        top: 0.0,
        width: 40.0,
        height: 40.0,
        child: agodaCircle(Color(0xfffdb812)),
      ),
      Positioned(
        left: 120.0,
        top: 20.0,
        width: 40.0,
        height: 40.0,
        child: agodaCircle(Color(0xff00b057)),
      ),
      Positioned(
        left: 140.0,
        top: 40.0,
        width: 40.0,
        height: 40.0,
        child: agodaCircle(Color(0xffaf38b1)),
      ),
    ];
  }

  List<Widget> circles() {
    return <Widget>[
      agodaCircle(Color(0xffff2938)),
      SizedBox(
        width: 5,
        height: 5,
      ),
      agodaCircle(Color(0xfffdb812)),
      SizedBox(
        width: 5,
        height: 5,
      ),
      agodaCircle(Color(0xff00b057)),
      SizedBox(
        width: 5,
        height: 5,
      ),
      agodaCircle(Color(0xffaf38b1)),
      SizedBox(
        width: 5,
        height: 5,
      ),
      agodaCircle(Color(0xff00aae0)),
    ];
  }

  Widget createContainer() {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(20),
      child: Container(
        color: Colors.red[200],
        padding: EdgeInsets.all(20),
        child: Container(
          color: Colors.yellow[200],
          child: Text("Child"),
        ),
      ),
      color: Colors.blue[300],
    );
  }

  Widget createAlignContainer() {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(15),
      child: Container(
        color: Colors.red[200],
        padding: EdgeInsets.all(15),
        child: Container(
          color: Colors.yellow[200],
          child: Stack(
            children: <Widget>[
              Align(alignment: Alignment.topLeft, child: Text("TL")),
              Align(alignment: Alignment.topRight, child: Text("TR")),
              Align(alignment: Alignment.bottomLeft, child: Text("BL")),
              Align(alignment: Alignment.bottomRight, child: Text("BR")),
              Align(alignment: Alignment.center, child: Text("C")),
              Align(alignment: Alignment.centerLeft, child: Text("CL")),
              Align(alignment: Alignment.centerRight, child: Text("CR")),
              Align(alignment: Alignment.topCenter, child: Text("TC")),
              Align(alignment: Alignment.bottomCenter, child: Text("BC")),
            ],
          ),
        ),
      ),
      color: Colors.blue[300],
    );
  }
}
