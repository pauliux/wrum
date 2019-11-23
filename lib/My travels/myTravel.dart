import 'package:flutter/material.dart';

class MyTravel extends StatefulWidget {
  @override
  _MyTravelState createState() => _MyTravelState();
}

class _MyTravelState extends State<MyTravel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Mano kelionės'),
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Container(
          child: Column(
            children: <Widget>[],
          ),
        ));
  }
}