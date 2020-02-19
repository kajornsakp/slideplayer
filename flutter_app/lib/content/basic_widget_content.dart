import 'dart:io';

import 'package:flutter_slides/models/slides.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slides/utils/image_utils.dart' as ImageUtils;

class BasicWidgetContent extends StatelessWidget {
  final double width;
  final double height;
  final String type;
  bool isPreview = false;

  BasicWidgetContent({Key key, Map contentMap, bool isPreview})
      : this.width = contentMap['width'],
        this.height = contentMap['height'],
        this.type = contentMap['widget_type'],
        this.isPreview = isPreview,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    if(isPreview) return Container();
    switch(type) {
      case 'container': return Container(width: width, height: height, color:
        Colors.red[50]);
      case 'appbar': return AppBar(leading: IconButton(icon: Icon(Icons.menu)
        , onPressed: (){},), title: Text
        ("App bar"), actions: <Widget>[IconButton(icon: Icon(Icons.search),
    onPressed: (){},)
      ],);
      case 'button': return RaisedButton(child: Text("BUTTON"), onPressed: ()
      {},color: Colors.blueAccent,textColor: Colors.white,);
      case 'row': return Row(children: circles());
      case 'column': return Column(children: circles());
      case 'stack': return Stack(children: circlesStack());
      case 'text': return Text.rich(
        TextSpan(
          style: TextStyle(fontSize: 24.0),
          text: 'Hello', // default text style
          children: <TextSpan>[
            TextSpan(text: ' beautiful ', style: TextStyle(fontStyle: FontStyle.italic)),
            TextSpan(text: 'world', style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      );
      case 'list': return Container(
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xff00aae0))
        ),
        child: createList(),
      );
      case 'grid': return Container(
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xff00b057))
        ),
        child: createGrid(),
      );
    }
  }

  Widget agodaCircle(Color color) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle
      ),
    );
  }
  List<Widget> circlesStack() {
    return <Widget>[
      Positioned(width: 40.0, height: 40.0, child: agodaCircle(Color
        (0xffff2938)),),
      Positioned(left: 20.0, top: 20.0,width: 40.0, height: 40.0, child:
      agodaCircle(Color(0xfffdb812)),),
      Positioned(left: 40.0, top: 40.0,width: 40.0, height: 40.0, child:
      agodaCircle(Color(0xff00b057)),),
      Positioned(left: 60.0, top: 40.0,width: 40.0, height: 40.0, child:
      agodaCircle(Color(0xffaf38b1)),),
      Positioned(left: 80.0, top: 20.0,width: 40.0, height: 40.0, child:
      agodaCircle(Color(0xff00aae0)),),
      Positioned(left: 100.0, top: 0.0,width: 40.0, height: 40.0, child:
      agodaCircle(Color(0xfffdb812)),),
      Positioned(left: 120.0, top: 20.0,width: 40.0, height: 40.0, child:
      agodaCircle(Color(0xff00b057)),),
      Positioned(left: 140.0, top: 40.0,width: 40.0, height: 40.0, child:
      agodaCircle(Color(0xffaf38b1)),),
    ];
  }
  List<Widget> circles() {
    return <Widget>[
      agodaCircle(Color(0xffff2938)),
      SizedBox(width: 5,height: 5,),
      agodaCircle(Color(0xfffdb812)),
      SizedBox(width: 5,height: 5,),
      agodaCircle(Color(0xff00b057)),
      SizedBox(width: 5,height: 5,),
      agodaCircle(Color(0xffaf38b1)),
      SizedBox(width: 5,height: 5,),
      agodaCircle(Color(0xff00aae0)),
    ];
  }
  ListView createList() {
    return ListView.builder(itemCount: 20, padding: EdgeInsets
        .all(8),itemBuilder: (BuildContext context, int index) {
      return InkWell(
        onTap: (){},
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Color(0xff00b057), width: 0.2)
          ),
          height: 40.0,
          child: Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text("($index) This is a list item"),),
        ),
      );
    });
  }
  GridView createGrid() {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('He\'d have you all unravel at the'),
          color: Colors.teal[100],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Heed not the rabble'),
          color: Colors.teal[200],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Sound of screams but the'),
          color: Colors.teal[300],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Who scream'),
          color: Colors.teal[400],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Revolution is coming...'),
          color: Colors.teal[500],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Revolution, they...'),
          color: Colors.teal[600],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('He\'d have you all unravel at the'),
          color: Colors.teal[700],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Heed not the rabble'),
          color: Colors.teal[800],
        ),
      ],
    );
  }
  
}
