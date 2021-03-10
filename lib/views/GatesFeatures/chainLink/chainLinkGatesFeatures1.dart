import 'dart:io';
import 'package:flutter/material.dart';

class ChainLinkGatesFeatures1 extends StatefulWidget {
  @override
  _feature1 createState() => _feature1();
}

TextEditingController _inchesFieldControllerChainLink = TextEditingController();
String swingTypeChainLink = "";

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

class _feature1 extends State<ChainLinkGatesFeatures1> {
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
                                            _inchesFieldControllerChainLink,
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
                                        swingTypeChainLink = 'Inside';
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
                      title: Text('Outside:'),
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
                                            _inchesFieldControllerChainLink,
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
                                        swingTypeChainLink = 'Outside';
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
                      title: Text('left:'),
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
                                            _inchesFieldControllerChainLink,
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
                                        swingTypeChainLink = 'left';
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
                      title: Text('right:'),
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
                                            _inchesFieldControllerChainLink,
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
                                        swingTypeChainLink = 'right';
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

class BringAnswerChainLink1 {
  String send() {
    return swingTypeChainLink + ":" + _inchesFieldControllerChainLink.text;
  }
}