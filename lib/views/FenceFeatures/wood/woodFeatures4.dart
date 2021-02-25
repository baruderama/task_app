import 'dart:io';
import 'package:flutter/material.dart';

class WoodFeatures4 extends StatefulWidget {
  @override
  _feature1 createState() => _feature1();
}

String selectedStateWoodQ4 = null;

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

class _feature1 extends State<WoodFeatures4> {
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
                "Top Finish:",
                style: TextStyle(
                  fontSize: 22.0,
                  fontFamily: "Ralewaybold",
                ),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Column(
              children: <Widget>[
                RadioListTile<SigningCharacter>(
                  title: const Text('Following ground'),
                  value: SigningCharacter.Inches15,
                  groupValue: _character,
                  onChanged: (SigningCharacter value) {
                    setState(() {
                      _character = value;
                      selectedStateWoodQ4 = 'Following ground';
                    });
                  },
                ),
                Divider(
                  height: 10,
                ),
                RadioListTile<SigningCharacter>(
                  title: const Text('Straight'),
                  value: SigningCharacter.Inches48,
                  groupValue: _character,
                  onChanged: (SigningCharacter value) {
                    setState(() {
                      _character = value;
                      selectedStateWoodQ4 = 'Straight';
                    });
                  },
                ),
                Divider(
                  height: 10,
                ),
                RadioListTile<SigningCharacter>(
                  title: const Text('Stepped'),
                  value: SigningCharacter.Inches24,
                  groupValue: _character,
                  onChanged: (SigningCharacter value) {
                    setState(() {
                      _character = value;
                      selectedStateWoodQ4 = 'Stepped';
                    });
                  },
                ),
              ],
            ),
          ),

          /*Expanded(
            flex: 1,
          ),*/
        ],
      ),
    );
  }
}

class BringAnswerWood4 {
  String send() {
    return selectedStateWoodQ4;
  }
}
