import 'dart:io';
import 'package:flutter/material.dart';

class MontageGatesFeature3 extends StatefulWidget {
  @override
  _feature1 createState() => _feature1();
}

TextEditingController _inchesFieldControllerMontage = TextEditingController();
String swingTypeMontage = "";

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

class _feature1 extends State<MontageGatesFeature3> {
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
                "Opening end Swing:",
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
                      title: Text('Inside'),
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Inches:"),
                                content: Form(
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                      TextFormField(
                                        controller:
                                            _inchesFieldControllerMontage,
                                        validator: (value) {
                                          return value.isNotEmpty
                                              ? null
                                              : "Invalido";
                                        },
                                        decoration: InputDecoration(
                                            hintText: "Ex: 5', 15', etc"),
                                      ),
                                    ])),
                                actions: <Widget>[
                                  FlatButton(
                                      onPressed: () {
                                        swingTypeMontage = 'Inside';
                                        Navigator.pop(context);
                                      },
                                      child: Text("Add"))
                                ],
                              );
                            });
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('Outside'),
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Inches:"),
                                content: Form(
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                      TextFormField(
                                        controller:
                                            _inchesFieldControllerMontage,
                                        validator: (value) {
                                          return value.isNotEmpty
                                              ? null
                                              : "Invalido";
                                        },
                                        decoration: InputDecoration(
                                            hintText: "Ex: 5', 15', etc"),
                                      ),
                                    ])),
                                actions: <Widget>[
                                  FlatButton(
                                      onPressed: () {
                                        swingTypeMontage = 'Outside';
                                        Navigator.pop(context);
                                      },
                                      child: Text("Add"))
                                ],
                              );
                            });
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('left'),
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Inches:"),
                                content: Form(
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                      TextFormField(
                                        controller:
                                            _inchesFieldControllerMontage,
                                        validator: (value) {
                                          return value.isNotEmpty
                                              ? null
                                              : "Invalido";
                                        },
                                        decoration: InputDecoration(
                                            hintText: "Ex: 5', 15', etc"),
                                      ),
                                    ])),
                                actions: <Widget>[
                                  FlatButton(
                                      onPressed: () {
                                        swingTypeMontage = 'left';
                                        Navigator.pop(context);
                                      },
                                      child: Text("Add"))
                                ],
                              );
                            });
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('right'),
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Inches:"),
                                content: Form(
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                      TextFormField(
                                        controller:
                                            _inchesFieldControllerMontage,
                                        validator: (value) {
                                          return value.isNotEmpty
                                              ? null
                                              : "Invalido";
                                        },
                                        decoration: InputDecoration(
                                            hintText: "Ex: 5', 15', etc"),
                                      ),
                                    ])),
                                actions: <Widget>[
                                  FlatButton(
                                      onPressed: () {
                                        swingTypeMontage = 'right';
                                        Navigator.pop(context);
                                      },
                                      child: Text("Add"))
                                ],
                              );
                            });
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

class BringAnswerMontageGates3 {
  String send() {
    return swingTypeMontage + ":" + _inchesFieldControllerMontage.text;
  }
}
