import 'dart:io';
import 'package:flutter/material.dart';
import 'package:task_app/views/FenceFeatures/chainLink/typeFence/comercial.dart';
import 'package:task_app/views/FenceFeatures/chainLink/typeFence/industrial.dart';
import 'package:task_app/views/FenceFeatures/chainLink/typeFence/residential.dart';
import 'package:task_app/views/GatesFeatures/cantileverGates/styleGates/styleCantileverGates.dart';
import 'package:task_app/views/GatesFeatures/cantileverGates/styleGates/styleCantileverGates1.dart';
import 'package:task_app/views/GatesFeatures/cantileverGates/styleGates/styleCantileverGates2.dart';

class ChainLinkFeatures3 extends StatefulWidget {
  @override
  _feature1 createState() => _feature1();
}

List<String> todosFenceChain = List<String>();

TextEditingController _inchesFieldControllerMontage = TextEditingController();
String styleTypeFence = "";

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

class _feature1 extends State<ChainLinkFeatures3> {
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
                "Type of Fence:",
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
                      title: Text('Residential'),
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => Residential()));
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('Comercial'),
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => Comercial()));
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('Industrial'),
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => Industrial()));
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

class BringAnswerFenceChainLink3 {
  String send() {
    return styleTypeFence;
  }
}
