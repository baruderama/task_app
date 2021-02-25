import 'dart:io';
import 'package:flutter/material.dart';

class MontageFeature1 extends StatefulWidget {
  @override
  _feature1 createState() => _feature1();
}

String selectedStateMontageQ1 = null;

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

class _feature1 extends State<MontageFeature1> {
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
            flex: 7,
            child: Column(
              children: <Widget>[
                RadioListTile<SigningCharacter>(
                  title: const Text('Residential'),
                  value: SigningCharacter.Inches15,
                  groupValue: _character,
                  onChanged: (SigningCharacter value) {
                    setState(() {
                      _character = value;
                      selectedStateMontageQ1 = 'Residential';
                    });
                  },
                ),
                Divider(
                  height: 10,
                ),
                RadioListTile<SigningCharacter>(
                  title: const Text('Comercial'),
                  value: SigningCharacter.Inches24,
                  groupValue: _character,
                  onChanged: (SigningCharacter value) {
                    setState(() {
                      _character = value;
                      selectedStateMontageQ1 = 'Comercial';
                    });
                  },
                ),
                Divider(
                  height: 10,
                ),
                RadioListTile<SigningCharacter>(
                  title: const Text('Industrial'),
                  value: SigningCharacter.Inches36,
                  groupValue: _character,
                  onChanged: (SigningCharacter value) {
                    setState(() {
                      _character = value;
                      selectedStateMontageQ1 = 'Industrial';
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

class BringAnswerMontage1 {
  String send() {
    return selectedStateMontageQ1;
  }
}
