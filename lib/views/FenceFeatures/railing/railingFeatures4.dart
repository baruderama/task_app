import 'dart:io';
import 'package:flutter/material.dart';

class RailingFeature4 extends StatefulWidget {
  @override
  _feature1 createState() => _feature1();
}

TextEditingController _colorFieldControllerRai = TextEditingController();
String colorTypeRai = "";

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

class _feature1 extends State<RailingFeature4> {
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
                "Color:",
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
                      title: Text('Power coating'),
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Color:"),
                                content: Form(
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                      TextFormField(
                                        controller: _colorFieldControllerRai,
                                        validator: (value) {
                                          return value.isNotEmpty
                                              ? null
                                              : "Invalido";
                                        },
                                        decoration: InputDecoration(
                                            hintText: "Ex: blue, red, etc"),
                                      ),
                                    ])),
                                actions: <Widget>[
                                  FlatButton(
                                      onPressed: () {
                                        colorTypeRai = 'Power coating';
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
                      title: Text('Regular Colors'),
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Color:"),
                                content: Form(
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                      TextFormField(
                                        controller: _colorFieldControllerRai,
                                        validator: (value) {
                                          return value.isNotEmpty
                                              ? null
                                              : "Invalido";
                                        },
                                        decoration: InputDecoration(
                                            hintText: "Ex: blue, red, etc"),
                                      ),
                                    ])),
                                actions: <Widget>[
                                  FlatButton(
                                      onPressed: () {
                                        colorTypeRai = 'Regular colors';
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

class BringAnswerRailing4 {
  String send() {
    return colorTypeRai + ":" + _colorFieldControllerRai.text;
  }
}
