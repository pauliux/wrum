import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String _title;
  final Object newPage;
  MenuButton(this._title, this.newPage);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 30, left: 30, right: 30),
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: MaterialButton(
            color: Colors.lightBlueAccent,
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(40.0)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => newPage),
              );
            },
            child: Text(_title,
                style: TextStyle(color: Colors.white, fontSize: 16)),
          ),
        ));
  }
}
