import 'dart:io';
import 'package:flutter/material.dart';
import 'package:task_app/models/photos/Photos.dart';

class ChainLinkFeatures6 extends StatefulWidget {
  @override
  _feature1 createState() => _feature1();
}

String selectedStateChainLinkQ6 = null;
List<Photos> todos3 = List<Photos>();
var co2;

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

class _feature1 extends State<ChainLinkFeatures6> {
  @override
  void initState() {
    super.initState();
    todos3 = [
      Photos(
        nombreFoto: '2',
        foto: 'assets/images/fences/chainLink/topRails/1-3_8 1-5_8.jpg',
      ),
    ];
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
                "Top Rails:",
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
                  title: const Text('1-3/8'),
                  value: SigningCharacter.Inches15,
                  groupValue: _character,
                  onChanged: (SigningCharacter value) {
                    setState(() {
                      _character = value;
                      selectedStateChainLinkQ6 = '1-3/8';
                    });
                  },
                ),
                Divider(
                  height: 10,
                ),
                RadioListTile<SigningCharacter>(
                  title: const Text('1-5/8'),
                  value: SigningCharacter.Inches24,
                  groupValue: _character,
                  onChanged: (SigningCharacter value) {
                    setState(() {
                      _character = value;
                      selectedStateChainLinkQ6 = '1-5/8';
                    });
                  },
                ),
              ],
            ),
          ),
          Expanded(
              flex: 4,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1, childAspectRatio: 1.2),
                itemCount: todos3.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(5.0),
                            // For  demo we use fixed height  and width
                            // Now we dont need them
                            // height: 180,
                            // width: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Hero(
                              tag: todos3[index].nombreFoto,
                              child: Image.asset(
                                todos3[index].foto,
                                color: co2,
                                colorBlendMode: BlendMode.darken,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      print('presionado' + todos3[index].nombreFoto);
                      this.setState(() {
                        co2 = Colors.green[300];
                        //selectedStateIronQ4 = todos3[index].nombreFoto;
                      });
                    },
                  );
                },
              )),
          /*Expanded(
            flex: 1,
          ),*/
        ],
      ),
    );
  }
}

class BringAnswerFenceChainLink6 {
  String send() {
    return selectedStateChainLinkQ6;
  }
}
