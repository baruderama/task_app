import 'dart:io';
import 'package:flutter/material.dart';

class ChainLinkFeatures1 extends StatefulWidget {
  @override
  _feature1 createState() => _feature1();
}

String selectedStateChainLinkQ1 = null;

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

class _feature1 extends State<ChainLinkFeatures1> {
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
                "Height:",
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
                  title: const Text('15"'),
                  value: SigningCharacter.Inches15,
                  groupValue: _character,
                  onChanged: (SigningCharacter value) {
                    setState(() {
                      _character = value;
                      selectedStateChainLinkQ1 = '15"';
                    });
                  },
                ),
                Divider(
                  height: 5,
                ),
                RadioListTile<SigningCharacter>(
                  title: const Text('3"'),
                  value: SigningCharacter.Inches24,
                  groupValue: _character,
                  onChanged: (SigningCharacter value) {
                    setState(() {
                      _character = value;
                      selectedStateChainLinkQ1 = '3"';
                    });
                  },
                ),
                Divider(
                  height: 5,
                ),
                RadioListTile<SigningCharacter>(
                  title: const Text('4"'),
                  value: SigningCharacter.Inches36,
                  groupValue: _character,
                  onChanged: (SigningCharacter value) {
                    setState(() {
                      _character = value;
                      selectedStateChainLinkQ1 = '4"';
                    });
                  },
                ),
                Divider(
                  height: 5,
                ),
                RadioListTile<SigningCharacter>(
                  title: const Text('5"'),
                  value: SigningCharacter.Inches42,
                  groupValue: _character,
                  onChanged: (SigningCharacter value) {
                    setState(() {
                      _character = value;
                      selectedStateChainLinkQ1 = '5"';
                    });
                  },
                ),
                Divider(
                  height: 5,
                ),
                RadioListTile<SigningCharacter>(
                  title: const Text('6"'),
                  value: SigningCharacter.Inches48,
                  groupValue: _character,
                  onChanged: (SigningCharacter value) {
                    setState(() {
                      _character = value;
                      selectedStateChainLinkQ1 = '6"';
                    });
                  },
                ),
                Divider(
                  height: 5,
                ),
                RadioListTile<SigningCharacter>(
                  title: const Text('7\''),
                  value: SigningCharacter.Inches5,
                  groupValue: _character,
                  onChanged: (SigningCharacter value) {
                    setState(() {
                      _character = value;
                      selectedStateChainLinkQ1 = '7';
                    });
                  },
                ),
                Divider(
                  height: 10,
                ),
                RadioListTile<SigningCharacter>(
                  title: const Text('8\''),
                  value: SigningCharacter.Inches6,
                  groupValue: _character,
                  onChanged: (SigningCharacter value) {
                    setState(() {
                      _character = value;
                      selectedStateChainLinkQ1 = '8';
                    });
                  },
                ),
                Divider(
                  height: 10,
                ),
                RadioListTile<SigningCharacter>(
                  title: const Text('10\''),
                  value: SigningCharacter.Inches7,
                  groupValue: _character,
                  onChanged: (SigningCharacter value) {
                    setState(() {
                      _character = value;
                      selectedStateChainLinkQ1 = '10';
                    });
                  },
                ),
                Divider(
                  height: 10,
                ),
                RadioListTile<SigningCharacter>(
                  title: const Text('11\''),
                  value: SigningCharacter.Inches8,
                  groupValue: _character,
                  onChanged: (SigningCharacter value) {
                    setState(() {
                      _character = value;
                      selectedStateChainLinkQ1 = '11';
                    });
                  },
                ),
                Divider(
                  height: 10,
                ),
                RadioListTile<SigningCharacter>(
                  title: const Text('12\''),
                  value: SigningCharacter.Inches8,
                  groupValue: _character,
                  onChanged: (SigningCharacter value) {
                    setState(() {
                      _character = value;
                      selectedStateChainLinkQ1 = '12';
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

class BringAnswerFenceChainLink1 {
  String send() {
    return selectedStateChainLinkQ1;
  }
}
