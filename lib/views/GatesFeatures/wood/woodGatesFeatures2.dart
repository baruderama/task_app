import 'dart:io';
import 'package:flutter/material.dart';
import 'package:task_app/models/photos/Photos.dart';
import 'package:task_app/views/FenceFeatures/Iron/ironFeature3.dart';

class WoodGatesFeatures2 extends StatefulWidget {
  @override
  _feature1 createState() => _feature1();
}

String selectedStateWoodGatesQ2 = null;

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

class _feature1 extends State<WoodGatesFeatures2> {
  @override
  void initState() {
    super.initState();
    todos2 = [
      Photos(
        nombreFoto: 'chanelock',
        foto: 'assets/images/gates/locks/chanelock.jpg',
      ),
      Photos(
        nombreFoto: 'combinationlock',
        foto: 'assets/images/gates/locks/combinationlock.jpg',
      ),
      Photos(
        nombreFoto: 'compositelock',
        foto: 'assets/images/gates/locks/compositelock.jpg',
      ),
      Photos(
        nombreFoto: 'deadbolt',
        foto: 'assets/images/gates/locks/deadbolt.png',
      ),
      Photos(
        nombreFoto: 'doblelockbox',
        foto: 'assets/images/gates/locks/doblelockbox.jpg',
      ),
      Photos(
        nombreFoto: 'doublelockbox',
        foto: 'assets/images/gates/locks/doublelockbox.jpg',
      ),
      Photos(
        nombreFoto: 'locinox',
        foto: 'assets/images/gates/locks/locinox.jpg',
      ),
      Photos(
        nombreFoto: 'locinoxmechanicalcode',
        foto: 'assets/images/gates/locks/locinoxmechanicalcode.jpg',
      ),
      Photos(
        nombreFoto: 'singlelock',
        foto: 'assets/images/gates/locks/singlelock.jpg',
      ),
      Photos(
        nombreFoto: 'singlelockbox',
        foto: 'assets/images/gates/locks/singlelockbox.jpg',
      ),
      Photos(
        nombreFoto: 'wood_vinyl_chainlinkkeylock',
        foto: 'assets/images/gates/locks/wood_vinyl_chainlinkkeylock.jpg',
      )
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
                "type of locks:",
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
                              tag: todos2[index],
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
                        selectedStateWoodGatesQ2 = todos2[index].nombreFoto;
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

class BringAnswerWoodGates2 {
  String send() {
    return selectedStateWoodGatesQ2;
  }
}
