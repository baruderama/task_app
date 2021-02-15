import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_app/views/TaskCreation/finalFeaures.dart';
import 'package:task_app/views/TaskCreation/levelMaterial.dart';

class OptionWood extends StatefulWidget {
  @override
  _optionWood createState() => _optionWood();
}

class _optionWood extends State<OptionWood> {
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
          height: 400,
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
                  new MaterialPageRoute(builder: (context) => FinalFeatures()));
            },
            padding: EdgeInsets.symmetric(horizontal: 50),
            color: Colors.blue[700],
            textColor: Colors.white,
            // child: Image.asset(
            //  "assets/images/cerebroAzul.png",
            // height: size.height * 0.25,
            //  ),
            child: Text("T&G", style: TextStyle(fontSize: 15)),
          ),
        ),
        SizedBox(
          height: 10,
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
                  new MaterialPageRoute(builder: (context) => FinalFeatures()));
            },
            padding: EdgeInsets.symmetric(horizontal: 50),
            color: Colors.blue[700],
            textColor: Colors.white,
            // child: Image.asset(
            //  "assets/images/cerebroAzul.png",
            // height: size.height * 0.25,
            //  ),
            child: Text("Normal", style: TextStyle(fontSize: 15)),
          ),
        ),
      ]),
    ));
  }
}
