import 'dart:io';
import 'package:flutter/material.dart';
import 'package:task_app/views/GatesFeatures/cantileverGates/styleGates/styleCantileverGates.dart';
import 'package:task_app/views/GatesFeatures/cantileverGates/styleGates/styleCantileverGates1.dart';
import 'package:task_app/views/GatesFeatures/cantileverGates/styleGates/styleCantileverGates2.dart';

class CantileverGatesFeatures1 extends StatefulWidget {
  @override
  _feature1 createState() => _feature1();
}

List<String> todosStyle = List<String>();

TextEditingController _inchesFieldControllerMontage = TextEditingController();
String styleGate = "";

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

class _feature1 extends State<CantileverGatesFeatures1> {
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
                "Style:",
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
                      title: Text('Cantilver rolled'),
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => SytleCantileverGates()));
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('Aluminum Tracks'),
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => SytleCantileverGates1()));
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('Over head'),
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => SytleCantileverGates2()));
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

class BringAnswerCantileverGates1 {
  String send() {
    return styleGate;
  }
}
