import 'package:flutter/material.dart';
import 'package:wrum/Values/values.dart';

/*
    List of stops
*/

class AddStop extends StatefulWidget {
  @override
  AddStopState createState() => AddStopState();
}

class AddStopState extends State<AddStop> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
        child: ListView.builder(
          shrinkWrap: true,
          itemBuilder: (
            context,
            index,
          ) {
            return ListTile(
                title: Text(selectedStops.elementAt(index)),
                trailing: Icon(
                  Icons.delete,
                ),
                onTap: () {
                  selectedStops.removeAt(index);
                  setState(() {});
                });
          },
          itemCount: selectedStops.length,
        ),
      ),
    );
  }
}
