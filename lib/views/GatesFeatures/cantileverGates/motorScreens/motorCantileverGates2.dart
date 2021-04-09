import 'dart:io';
import 'package:flutter/material.dart';
import 'package:task_app/models/photos/Photos.dart';
import 'package:task_app/views/FenceFeatures/Iron/ironFeature3.dart';

class MotorCantileverGates2 extends StatefulWidget {
  @override
  _feature1 createState() => _feature1();
}

String selectedStateIronQ2 = null;

List<Photos> todos2 = List<Photos>();
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

class _feature1 extends State<MotorCantileverGates2> {
  @override
  void initState() {
    super.initState();
    todos2 = [
      Photos(
        nombreFoto: 'pedestals',
        foto:
            'assets/images/gates/cantileverGates/accesories/Access Control Pedestals.png',
      ),
      Photos(
        nombreFoto: 'mounting post',
        foto:
            'assets/images/gates/cantileverGates/accesories/Dual Gooseneck Mounting Posts.jpg',
      ),
      Photos(
        nombreFoto: 'elect lock',
        foto:
            'assets/images/gates/cantileverGates/accesories/Electromagnetic Lock.jpg',
      ),
      Photos(
        nombreFoto: 'fire lock',
        foto:
            'assets/images/gates/cantileverGates/accesories/Fire Lock Box.png',
      ),
      Photos(
        nombreFoto: 'loop detector',
        foto:
            'assets/images/gates/cantileverGates/accesories/LiftMaster Plug-In Loop Detector.png',
      ),
      Photos(
        nombreFoto: 'Universal remote',
        foto:
            'assets/images/gates/cantileverGates/accesories/LiftMaster Universal Remote.png',
      ),
      Photos(
        nombreFoto: 'photo ayes',
        foto: 'assets/images/gates/cantileverGates/accesories/photo ayes.jpg',
      ),
      Photos(
        nombreFoto: 'remote2',
        foto: 'assets/images/gates/cantileverGates/accesories/remote.png',
      ),
      Photos(
        nombreFoto: 'smartphone',
        foto:
            'assets/images/gates/cantileverGates/accesories/smartphone-liftmaster-myQ.png',
      ),
      Photos(
        nombreFoto: 'wireless',
        foto:
            'assets/images/gates/cantileverGates/accesories/Wireless Keypad.jpg',
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
                "accesories:",
                style: TextStyle(
                  fontSize: 22.0,
                  fontFamily: "Ralewaybold",
                ),
              ),
            ),
          ),
          Expanded(
              flex: 4,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 1.2),
                itemCount: todos2.length,
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
                              tag: todos2[index].nombreFoto,
                              child: Image.asset(
                                todos2[index].foto,
                                color: co2,
                                colorBlendMode: BlendMode.darken,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      print('presionado' + todos2[index].nombreFoto);
                      this.setState(() {
                        co2 = Colors.green[300];
                        selectedStateIronQ2 = todos2[index].nombreFoto;
                      });
                    },
                  );
                },
              )),
          /* Expanded(
              flex: 4,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 1.2),
                itemCount: 4,
                itemBuilder: (context, index) => ItemCard(
                  image: todos2[index],
                ),
              )),*/
          /*Expanded(
            flex: 1,
          ),*/
        ],
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final Function press;
  final String image;

  const ItemCard({Key key, this.press, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('presionado' + this.image.toString());
      },
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
                tag: image,
                child: Image.asset('assets/images/Fence.JPG'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BringAnswerIron2 {
  String send() {
    return selectedStateIronQ2;
  }
}
