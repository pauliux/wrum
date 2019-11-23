import 'package:flutter/material.dart';
import 'package:wrum/Find%20travel/findTravel.dart';
import 'package:wrum/My%20travels/myTravel.dart';
import 'package:wrum/New%20travel/newTravelPage.dart';
import 'package:wrum/Register/Registermain.dart';
import 'menuButton.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Wrum - Meniu'),
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              MenuButton("Mano kelionės",  MyTravel()),
              MenuButton("Rasti kelionę",  FindTravel()),
              MenuButton("Registruoti kelionę",  NewTravelPage()),
              MenuButton("Prisijungti",  RegisterMain()),
             // CustomTextField(),
            ],
          ),
        ));
  }
}
