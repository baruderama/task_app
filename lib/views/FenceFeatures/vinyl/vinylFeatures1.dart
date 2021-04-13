import 'dart:io';
import 'package:flutter/material.dart';

class VinylFeature1 extends StatefulWidget {
  @override
  _feature1 createState() => _feature1();
}

TextEditingController _inchesFieldControllerVinyl1 = TextEditingController();
String swingTypeVinyl1 = "";
String selectedStateVinylGatesQ1 = null;

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

class _feature1 extends State<VinylFeature1> {
  @override
  void initState() {
    super.initState();
    _inchesFieldControllerVinyl1 = new TextEditingController();
    _character = SigningCharacter.Normal;

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
                  RadioListTile<SigningCharacter>(
                    title: const Text('white'),
                    value: SigningCharacter.Inches8,
                    groupValue: _character,
                    onChanged: (SigningCharacter value) {
                      setState(() {
                        _character = value;
                        selectedStateVinylGatesQ1 = 'white';
                      });
                    },
                  ),
                  RadioListTile<SigningCharacter>(
                    title: const Text('Almond'),
                    value: SigningCharacter.Inches24,
                    groupValue: _character,
                    onChanged: (SigningCharacter value) {
                      setState(() {
                        _character = value;
                        selectedStateVinylGatesQ1 = 'almond';
                      });
                    },
                  ),
                  RadioListTile<SigningCharacter>(
                    title: const Text('kakhi'),
                    value: SigningCharacter.Inches24,
                    groupValue: _character,
                    onChanged: (SigningCharacter value) {
                      setState(() {
                        _character = value;
                        selectedStateVinylGatesQ1 = 'Kaki';
                      });
                    },
                  ),
                  /* Card(
                    child: ListTile(
                      title: Text('Other'),
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("color:"),
                                content: Form(
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                      TextFormField(
                                        controller:
                                            _inchesFieldControllerVinyl1,
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
                                        //swingTypeVinyl1 = 'Color';
                                        Navigator.pop(context);
                                      },
                                      child: Text("Add"))
                                ],
                              );
                            });
                      },
                    ),
                  ),*/
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

class BringAnswerVinyl1 {
  String send() {
    if (_inchesFieldControllerVinyl1.text != "") {
      print(_inchesFieldControllerVinyl1.text + 'holis');
      return _inchesFieldControllerVinyl1.text;
    } else {
      return selectedStateVinylGatesQ1;
    }
  }
}
