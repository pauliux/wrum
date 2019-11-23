import 'package:flutter/material.dart';
import 'package:wrum/Register/pages/root_page.dart';
import 'package:wrum/Register/services/authentication.dart';


class RegisterMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Flutter login demo',
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: new RootPage(auth: new Auth()));
  }
}
