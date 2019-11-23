import 'package:flutter/material.dart';
import 'package:wrum/Values/values-LT.dart';
import 'package:wrum/Values/values.dart';

class Stop extends StatefulWidget {
  String _stopValue;
  String _selected;
  String _selectedValue;
  Stop(stopValue, selected) {
    this._stopValue = stopValue;
    this._selected = selected;
    _getSelected(this._selected);
  }

  @override
  _StopState createState() => _StopState();

  void _getSelected(String select) {
    if (select == "Departure")
      this._selectedValue = selectedDeparture;
    else if (select == "Arrival") this._selectedValue = selectedArrival;
  }
}

class _StopState extends State<Stop> {
  void setSelected(String select) {
    if (select == "Departure")
      selectedDeparture = widget._selectedValue;
    else if (select == "Arrival") selectedArrival = widget._selectedValue;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(
              color: Colors.lightBlueAccent,
              style: BorderStyle.solid,
              width: 0.80),
        ),
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Container(
          child: DropdownButton<String>(
            isExpanded: true,
            hint: Text(widget._stopValue),
            value: widget._selectedValue,
            onChanged: (newValue) {
              setState(() {
                widget._selectedValue = newValue;
                setSelected(widget._selected);
              });
            },
            items: cities.map((location) {
              return DropdownMenuItem(
                child: new Text(location),
                value: location,
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
