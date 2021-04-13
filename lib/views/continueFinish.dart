import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_app/controller/services/clientCrud/clientCrud.dart';
import 'package:task_app/models/miscellaneo/Miscellaneous.dart';
import 'package:task_app/views/CameraIntercom/camaraIntercomScreen.dart';
import 'package:task_app/views/TaskCreation/fenceGate.dart';

import 'package:task_app/views/TaskCreation/finalFeaures.dart';
import 'package:task_app/views/TaskCreation/levelMaterial.dart';
import 'package:task_app/views/TaskCreation/levelMaterialGates.dart';
import 'package:task_app/views/bossScreen/autenticationScreen.dart';
import 'package:task_app/views/homeScreen/homePage.dart';
import 'package:task_app/views/miscellaneou/miscellaneous.dart';
import 'package:task_app/views/principalScreen.dart';

class ContinueFinish extends StatefulWidget {
  @override
  _fenceGate createState() => _fenceGate();
}

String selectedAcceptTerms = null;
bool checkedValue = false;

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
SigningCharacter _characterTerm = SigningCharacter.Normal;
String selectedStateRadioQ1Term = null;

class _fenceGate extends State<ContinueFinish> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, colors: [
        Colors.white,
        Colors.white,
      ])),
      child: Column(children: <Widget>[
        SizedBox(
          height: 200,
        ),
        Container(
          height: 50,
          margin: EdgeInsets.symmetric(horizontal: 40),
          child: FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0)),
            //   side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))),
            onPressed: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => FenceGate()));
            },
            padding: EdgeInsets.symmetric(horizontal: 50),
            color: Colors.blue[700],
            textColor: Colors.white,
            // child: Image.asset(
            //  "assets/images/cerebroAzul.png",
            // height: size.height * 0.25,
            //  ),
            child: Text("Continue", style: TextStyle(fontSize: 15)),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 50,
          margin: EdgeInsets.symmetric(horizontal: 40),
          child: FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0)),
            //   side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))),
            onPressed: () {
              // RoutesGeneral().toRegister(context);\

              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return StatefulBuilder(builder: (context, setState) {
                      return AlertDialog(
                        title: Text("Read"),
                        content: Form(
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                              Text("TERMS & CONDITIONS"),
                              CheckboxListTile(
                                title: Text("Accept Terms & Conditions"),
                                value: checkedValue,
                                onChanged: (newValue) {
                                  setState(() {
                                    checkedValue = newValue;
                                    print(checkedValue);
                                  });
                                },
                                controlAffinity: ListTileControlAffinity
                                    .leading, //  <-- leading Checkbox
                              )
                            ])),
                        actions: <Widget>[
                          FlatButton(
                              onPressed: () async {
                                ClientCrud().updateClient(lastkey);
                                if (checkedValue) {
                                  globalCount = 0;
                                  ClientCrud().updateClient(lastkey);
                                  Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                          builder: (context) =>
                                              PrincipalScreen()));
                                } else {
                                  Navigator.pop(context);
                                }
                              },
                              child: Text("ACCEPT"))
                        ],
                      );
                    });
                  });
            },
            padding: EdgeInsets.symmetric(horizontal: 50),
            color: Colors.blue[700],
            textColor: Colors.white,
            // child: Image.asset(
            //  "assets/images/cerebroAzul.png",
            // height: size.height * 0.25,
            //  ),
            child: Text("finish", style: TextStyle(fontSize: 15)),
          ),
        ),
      ]),
    ));
  }
}
