import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:intl/intl.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_app/controller/services/clientTaskCrud/clientTaskCrud.dart';
import 'package:task_app/main.dart';

DateTime tempDate;
TimeOfDay _time = TimeOfDay.now();
String currentClient;

class CalendarScreen extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<CalendarScreen> {
  DateTime _selectedDay = DateTime.now();

  CalendarController _calendarController;
  Map<DateTime, List<dynamic>> _events = {};

  List<dynamic> _selectedEvents = [];

  void initState() {
    super.initState();

    _calendarController = CalendarController();
  }

  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }

  void _onDaySelected(DateTime day, List events) {
    setState(() {
      _selectedDay = day;
      _selectedEvents = events;
    });
  }

  /*
  Widget relojito(Size size, BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 90),
      child: FlatButton(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        onPressed: () async {
          _time = await showTimePicker(context: context, initialTime: _time);
          debugPrint(_time.toString());
        },
        padding: EdgeInsets.symmetric(horizontal: 10),
        color: Colors.grey[200],
        //textColor: Colors.white,
        child: Text(
          "¡Escoge la hora!",
          style: TextStyle(
            color: Colors.indigo,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
  */

  Widget calendar() {
    return Container(
        margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            gradient:
                LinearGradient(colors: [Colors.blue[800], Colors.blue[800]]),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5,
                  offset: new Offset(0.0, 5))
            ]),
        child: TableCalendar(
          calendarStyle: CalendarStyle(
            canEventMarkersOverflow: true,
            markersColor: Colors.white,
            weekdayStyle: TextStyle(color: Colors.white),
            todayColor: Colors.white54,
            todayStyle: TextStyle(
                color: Colors.indigo[400],
                fontSize: 15,
                fontWeight: FontWeight.bold),
            selectedColor: Colors.indigo[700],
            outsideWeekendStyle: TextStyle(color: Colors.white60),
            outsideStyle: TextStyle(color: Colors.white60),
            weekendStyle: TextStyle(color: Colors.white),
            renderDaysOfWeek: false,
          ),
          calendarController: _calendarController,
          events: _events,
          headerStyle: HeaderStyle(
            leftChevronIcon:
                Icon(Icons.arrow_back_ios, size: 15, color: Colors.white),
            rightChevronIcon:
                Icon(Icons.arrow_forward_ios, size: 15, color: Colors.white),
            titleTextStyle:
                GoogleFonts.montserrat(color: Colors.white, fontSize: 16),
            formatButtonDecoration: BoxDecoration(
              color: Colors.white60,
              borderRadius: BorderRadius.circular(20),
            ),
            formatButtonTextStyle: GoogleFonts.montserrat(
                color: Colors.indigo[400],
                fontSize: 13,
                fontWeight: FontWeight.bold),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FlatButton(
                  color: Colors.white,
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: Icon(
                          LineAwesomeIcons.arrow_left,
                          color: Colors.indigo,
                          size: 40,
                        ),
                      )
                    ],
                  ),
                  onPressed: () async {
                    //RoutesGeneral().toPop(context);
                  },
                  // padding: EdgeInsets.all(1),
                  shape: CircleBorder(),
                ),
                Text(
                  "Calendario",
                  style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 25,
                      fontFamily: "Raleway2"),
                ),
              ],
            ),
          ),
          calendar(),
          SizedBox(height: 60),
          //relojito(size, context),
          SizedBox(height: 60)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        onPressed: () {
          DateTime onlyDate = new DateFormat("yyyy-MM-dd")
              .parse(_calendarController.selectedDay.toString());

          String date = onlyDate.year.toString() +
              "-" +
              onlyDate.month.toString() +
              "-" +
              onlyDate.day.toString();
          /*
              " " +
              _time.hour.toString() +
              ":" +
              _time.minute.toString() +
              ":00";
              */
          tempDate = new DateFormat("yyyy-MM-dd").parse(date);
          debugPrint(_calendarController.selectedDay.toString());
          debugPrint(tempDate.toString());
          productReference.once().then((DataSnapshot snapshot) {
            Map<dynamic, dynamic> values = snapshot.value;

            values.forEach((key, values) {
              if (values["idClient"] == currentClient) {
                print('hey bro2' + values["idClient"]);
                ClientTaskCrud().updateClientTask(key, onlyDate);
                //print('hey bro2' + values["id"]);
                //currentClient = values["idClient"];
                // print('hey bro' + key.toString());
                //debugPrint(key);
                //lastkey = key;
              }
            });
          });
          scheduleAlarm(onlyDate.toString());

          Navigator.pop(context);

          // RoutesPatient().toSymptomsFormPatient(context);
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  void scheduleAlarm(String dueDate) async {
    var scheduledNotificationDateTime =
        DateTime.now().add(Duration(seconds: 5));
    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
      'alarm_notif',
      'alarm_notif',
      'Channel for Alarm notification',
      icon: 'hey1_',
      //sound: RawResourceAndroidNotificationSound('a_long_cold_sting'),
      largeIcon: DrawableResourceAndroidBitmap('hey1_'),
    );

    var iOSPlatformChannelSpecifics = IOSNotificationDetails(
        sound: 'a_long_cold_sting.wav',
        presentAlert: true,
        presentBadge: true,
        presentSound: true);
    var platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics,
        iOS: iOSPlatformChannelSpecifics);

    await flutterLocalNotificationsPlugin.schedule(
        0,
        'TASK OF CLIENT \n-$currentClient :',
        "Due date -> $dueDate",
        scheduledNotificationDateTime,
        platformChannelSpecifics);
  }
}
