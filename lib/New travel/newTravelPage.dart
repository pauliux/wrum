import 'package:flutter/material.dart';
import 'package:wrum/New travel/addStop.dart';
import 'package:wrum/Menu/menu.dart';
import 'package:wrum/Values/values-LT.dart';
import 'package:wrum/Values/values.dart';
import 'stops.dart';
import 'addStop.dart';

class NewTravelPage extends StatefulWidget {
  static String tag = 'new-travel';
  _NewTravelPageState createState() => new _NewTravelPageState();
}

class _NewTravelPageState extends State<NewTravelPage> {
  Stop departureStop; // Departure field
  Stop arrivalStop; // Arrival field

  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    // Add new stop to a list
    void newStopToList() {
      setState(() {
        if (selectedStop != null) selectedStops.add(selectedStop);
      });
    }

    // Save new travel data as string
    String saveTravelToStr(String departure, List<String> stops, String arrival,
        String time, String date) {
      String travel = departure + '-';
      for (int i = 0; i < stops.length; i++) {
        travel += stops[i] + '-';
      }
      travel += arrival;
      travel += "\n" + dateText + ": " + date + "\n" + timeText + ": " + time;
      return travel;
    }

    // button for adding stops
    final addNewStopButton = Padding(
      padding: EdgeInsets.only(top: 1),
      child: MaterialButton(
        minWidth: 100.0,
        height: 30.0,
        onPressed: () {
          newStopToList();
          selectedStop = null;
        },
        color: Colors.lightBlueAccent,
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(40.0)),
        child: Text(addStopText, style: TextStyle(color: Colors.white)),
      ),
    );

    // Convert date format
    String dateFormat() {
      String date;
      String year = selectedDate.year.toString();
      String month = (selectedDate.month < 10)
          ? ('0' + selectedDate.month.toString())
          : selectedDate.month.toString();
      String day = (selectedDate.day < 10)
          ? ('0' + selectedDate.day.toString())
          : selectedDate.day.toString();
      date = (year + "-" + month + "-" + day);
      return date;
    }

    // Convert time format
    String timeFormat() {
      String time;
      String minutes = (selectedTime.minute < 10)
          ? ('0' + selectedTime.minute.toString())
          : selectedTime.minute.toString();
      String hour = (selectedTime.hour < 10)
          ? ('0' + selectedTime.hour.toString())
          : selectedTime.hour.toString();
      time = (hour + ":" + minutes);
      return time;
    }

    String date = dateFormat();
    String time = timeFormat();

    // Date picker
    Future<Null> _datePicker(BuildContext context) async {
      final DateTime picked = await showDatePicker(
          context: context,
          initialDate: selectedDate,
          firstDate: DateTime(2015, 8),
          lastDate: DateTime(2101));
      if (picked != null && picked != selectedDate)
        setState(() {
          selectedDate = picked;
          date = dateFormat();
        });
    }

    // Time picker
    Future<Null> _timePicker(BuildContext context) async {
      final TimeOfDay picked = await showTimePicker(
        context: context,
        initialTime: selectedTime,
      );

      if (picked != null && picked != selectedTime)
        setState(() {
          selectedTime = picked;
          time = timeFormat();
        });
    }

    // Dialog that shows up if there are empty fields
    Future<void> _lackOfDataAlert(BuildContext context) {
      return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(lackOfDataText),
            content: Text((() {
              if (selectedArrival != null && selectedDeparture == null)
                return selectDepartureText;
              else if (selectedArrival == null && selectedDeparture != null)
                return selectArrivalText;
              else
                return selectDepartureArrivalText;
            }())),
            actions: <Widget>[
              FlatButton(
                child: Text(okText),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    // Dialog to show that the new travel has been saved
    Future<void> _savedAlert(BuildContext context) {
      return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(travelSavedText),
            actions: <Widget>[
              FlatButton(
                child: Text(okText),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    // Dialog for confirming the new travel
    Future<void> _confirmAlert(BuildContext context) {
      return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(confirmTravelText),
            content: Text(saveTravelToStr(
                selectedDeparture, selectedStops, selectedArrival, time, date)),
            actions: <Widget>[
              FlatButton(
                child: Text(cancelText),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                child: Text(confirmText),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Menu()),
                  );
                  _savedAlert(context);
                },
              ),
            ],
          );
        },
      );
    }

    // Button for saving new travel
    final saveTravelButton = Container(
      padding: EdgeInsets.symmetric(vertical: 30.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 10,
        child: MaterialButton(
          minWidth: 200.0,
          height: 60.0,
          onPressed: () {
            newStopToList();
            selectedStop = null;
            if (selectedArrival == null || selectedDeparture == null)
              _lackOfDataAlert(context);
            if (selectedArrival != null && selectedDeparture != null) {
              _confirmAlert(context);
            }
          },
          color: Colors.lightBlueAccent,
          child: Text(saveButtonText,
              style: TextStyle(color: Colors.white, fontSize: 20)),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(newTravelTitle),
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
            // Departure field
            departureStop = Stop(departureValueText, "Departure"),
            // Field to select new stop and "add city" button
            Container(
              padding: EdgeInsets.only(top: 20, left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  // Field of new city
                  DropdownButton<String>(
                    hint: Text(stopValueText),
                    value: selectedStop,
                    onChanged: (newValue) {
                      setState(() {
                        selectedStop = newValue;
                      });
                    },
                    items: cities.map((location) {
                      return DropdownMenuItem(
                        child: new Text(location),
                        value: location,
                      );
                    }).toList(),
                  ),
                  // Button "New city"
                  addNewStopButton,
                ],
              ),
            ),
            // List of stops, arrival field, departure time and date
            Flexible(
              child: Column(
                children: <Widget>[
                  // List of stops
                  AddStop(),
                  // Arrival field
                  arrivalStop = Stop(arrivalValue, "Arrival"),
                  // Departure time and date
                  Container(
                    padding: EdgeInsets.only(top: 30, left: 30, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        // Departure date (Text and picker)
                        Column(
                          children: <Widget>[
                            // Text
                            Text(departureDateText),
                            // Picker
                            MaterialButton(
                              minWidth: 100,
                              color: Colors.lightBlueAccent,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(40.0)),
                              onPressed: () {
                                _datePicker(context);
                              },
                              child: Text(date,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14)),
                            ),
                          ],
                        ),
                        // Departure time (Text and picker)
                        Column(
                          children: <Widget>[
                            // Text
                            Text(departureTimeText),
                            // Picker
                            MaterialButton(
                              minWidth: 100,
                              color: Colors.lightBlueAccent,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(40.0)),
                              onPressed: () {
                                _timePicker(context);
                              },
                              child: Text(time,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
            // Save travel button
            saveTravelButton,
          ],
        ),
      ),
    );
  }
}













/*  String weekDay(int day) {
      String weekDays;
      switch (day) {
        case 1:
          weekDays = "Pirmadienis";
          break;
        case 2:
          weekDays = "Antradienis";
          break;
        case 3:
          weekDays = "Trečiadienis";
          break;
        case 4:
          weekDays = "Ketvirtadienis";
          break;
        case 5:
          weekDays = "Penktadienis";
          break;
        case 6:
          weekDays = "Šeštadienis";
          break;
        case 7:
          weekDays = "Sekmadienis";
          break;
        default:
          weekDays = "Diena neegzidtuoja";
          return weekDays;
      }
    }*/

/* Future<void> _days(BuildContext context) {
      return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Patvirtinti išvykimą'),
            content: new ListView(
              children: listOfWeekDays.keys.map((String key) {
                return new CheckboxListTile(
                  title: new Text(key),
                  value: listOfWeekDays[key],
                  onChanged: (bool value) {
                    setState(() {
                      listOfWeekDays[key] = value;
                    });
                  },
                );
              }).toList(),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('Atšaukti'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                child: Text('Patvirtinti'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }*/
