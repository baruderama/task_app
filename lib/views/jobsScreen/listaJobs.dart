import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_app/models/miscellaneo/Miscellaneous.dart';
import 'package:task_app/views/CameraIntercom/camaraIntercomScreen.dart';

import 'package:task_app/views/TaskCreation/finalFeaures.dart';
import 'package:task_app/views/TaskCreation/levelMaterial.dart';
import 'package:task_app/views/TaskCreation/levelMaterialGates.dart';
import 'package:task_app/views/bossScreen/autenticationScreen.dart';
import 'package:task_app/views/homeScreen/homePage.dart';
import 'package:task_app/views/jobsScreen/chainLink.dart';
import 'package:task_app/views/jobsScreen/dePortada.dart';
import 'package:task_app/views/jobsScreen/ironJobs.dart';
import 'package:task_app/views/jobsScreen/vinyl.dart';
import 'package:task_app/views/jobsScreen/wood.dart';
import 'package:task_app/views/miscellaneou/miscellaneous.dart';

class ListaJobs extends StatefulWidget {
  @override
  _fenceGate createState() => _fenceGate();
}

class _fenceGate extends State<ListaJobs> {
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
                  new MaterialPageRoute(builder: (context) => IronJobs()));
            },
            padding: EdgeInsets.symmetric(horizontal: 50),
            color: Colors.blue[700],
            textColor: Colors.white,
            // child: Image.asset(
            //  "assets/images/cerebroAzul.png",
            // height: size.height * 0.25,
            //  ),
            child: Text("Iron", style: TextStyle(fontSize: 15)),
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
                  new MaterialPageRoute(builder: (context) => ChainLink()));
            },
            padding: EdgeInsets.symmetric(horizontal: 50),
            color: Colors.blue[700],
            textColor: Colors.white,
            // child: Image.asset(
            //  "assets/images/cerebroAzul.png",
            // height: size.height * 0.25,
            //  ),
            child: Text("Chain Link", style: TextStyle(fontSize: 15)),
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
                  new MaterialPageRoute(builder: (context) => Deportada()));
            },
            padding: EdgeInsets.symmetric(horizontal: 50),
            color: Colors.blue[700],
            textColor: Colors.white,
            // child: Image.asset(
            //  "assets/images/cerebroAzul.png",
            // height: size.height * 0.25,
            //  ),
            child: Text("de Portada", style: TextStyle(fontSize: 15)),
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
                  new MaterialPageRoute(builder: (context) => Vinyl()));
            },
            padding: EdgeInsets.symmetric(horizontal: 50),
            color: Colors.blue[700],
            textColor: Colors.white,
            // child: Image.asset(
            //  "assets/images/cerebroAzul.png",
            // height: size.height * 0.25,
            //  ),
            child: Text("Vinyl", style: TextStyle(fontSize: 15)),
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
              Navigator.push(
                  context, new MaterialPageRoute(builder: (context) => Wood()));
            },
            padding: EdgeInsets.symmetric(horizontal: 50),
            color: Colors.blue[700],
            textColor: Colors.white,
            // child: Image.asset(
            //  "assets/images/cerebroAzul.png",
            // height: size.height * 0.25,
            //  ),
            child: Text("wood", style: TextStyle(fontSize: 15)),
          ),
        ),
      ]),
    ));
  }
}
