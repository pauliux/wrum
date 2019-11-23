import 'package:flutter/material.dart';

class FindTravel extends StatefulWidget {
  @override
  _FindTravelState createState() => _FindTravelState();
}

class _FindTravelState extends State<FindTravel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Kelionės paieška'),
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
