import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_app/models/miscellaneo/Miscellaneous.dart';
import 'package:task_app/views/CameraIntercom/camaraIntercomScreen.dart';

import 'package:task_app/views/TaskCreation/finalFeaures.dart';
import 'package:task_app/views/TaskCreation/levelMaterial.dart';
import 'package:task_app/views/TaskCreation/levelMaterialGates.dart';
import 'package:task_app/views/bossScreen/autenticationScreen.dart';
import 'package:task_app/views/homeScreen/homePage.dart';
import 'package:task_app/views/jobsScreen/listaJobs.dart';
import 'package:task_app/views/miscellaneou/miscellaneous.dart';

class PrincipalScreen extends StatefulWidget {
  @override
  _fenceGate createState() => _fenceGate();
}

class _fenceGate extends State<PrincipalScreen> {
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
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => AutenticationScreen()));
            },
            padding: EdgeInsets.symmetric(horizontal: 50),
            color: Colors.blue[700],
            textColor: Colors.white,
            // child: Image.asset(
            //  "assets/images/cerebroAzul.png",
            // height: size.height * 0.25,
            //  ),
            child: Text("Boss", style: TextStyle(fontSize: 15)),
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
              // RoutesGeneral().toRegister(context);
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => HomePage()));
            },
            padding: EdgeInsets.symmetric(horizontal: 50),
            color: Colors.blue[700],
            textColor: Colors.white,
            // child: Image.asset(
            //  "assets/images/cerebroAzul.png",
            // height: size.height * 0.25,
            //  ),
            child: Text("Seller", style: TextStyle(fontSize: 15)),
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
              // RoutesGeneral().toRegister(context);
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => ListaJobs()));
            },
            padding: EdgeInsets.symmetric(horizontal: 50),
            color: Colors.blue[700],
            textColor: Colors.white,
            // child: Image.asset(
            //  "assets/images/cerebroAzul.png",
            // height: size.height * 0.25,
            //  ),
            child: Text("Jobs", style: TextStyle(fontSize: 15)),
          ),
        ),
      ]),
    ));
  }
}
