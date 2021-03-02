import 'dart:io';
import 'package:flutter/material.dart';
import 'package:task_app/views/GatesFeatures/cantileverGates/motorScreens/motorCantileverGates1.dart';
import 'package:task_app/views/GatesFeatures/cantileverGates/motorScreens/motorCantileverGates2.dart';
import 'package:task_app/views/GatesFeatures/cantileverGates/motorScreens/motorCantileverGates3.dart';
import 'package:task_app/views/GatesFeatures/cantileverGates/motorScreens/motorCantileverGates4.dart';
import 'package:task_app/views/GatesFeatures/cantileverGates/styleGates/styleCantileverGates.dart';
import 'package:task_app/views/GatesFeatures/cantileverGates/styleGates/styleCantileverGates1.dart';
import 'package:task_app/views/GatesFeatures/cantileverGates/styleGates/styleCantileverGates2.dart';

class CantileverGatesFeatures4 extends StatefulWidget {
  @override
  _feature1 createState() => _feature1();
}

List<String> todosMotor = List<String>();

TextEditingController _inchesFieldControllerMontage = TextEditingController();
String motorGate = "";

enum SigningCharacter {
  Normal,
  PerdidaDeExpresion,
  Monotono,
  Alterado,
  Ininteligible,
  Inches15,
  Inches24,
  Inches36,
  Inches42,
  Inches48,
  Inches5,
  Inches6,
  Inches7,
  Inches8,
}
SigningCharacter _character = SigningCharacter.Normal;
String selectedStateRadioQ1 = null;

class _feature1 extends State<CantileverGatesFeatures4> {
  @override
  void initState() {
    super.initState();
    //todos.add("Regular Colors");
    //todos.add("Power Coating");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white60,
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.center,
              child: Text(
                "Motor:",
                style: TextStyle(
                  fontSize: 22.0,
                  fontFamily: "Ralewaybold",
                ),
              ),
            ),
          ),
          Expanded(
              flex: 3,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Card(
                    child: ListTile(
                      title: Text('Type of Motors'),
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => MotorCantileverGates1()));
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('Safely device'),
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => MotorCantileverGates2()));
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('Key pads'),
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => MotorCantileverGates3()));
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('Remote control'),
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => MotorCantileverGates4()));
                      },
                    ),
                  ),
                ],
              )),
          /*Expanded(
            flex: 1,
          ),*/
        ],
      ),
    );
  }
}

class BringAnswerCantilver4 {
  String send() {
    return motorGate;
  }
}
