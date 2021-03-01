import 'dart:io';
import 'package:flutter/material.dart';
import 'package:task_app/views/FenceFeatures/Iron/ironFeature3.dart';

class VinylGatesFeatures3 extends StatefulWidget {
  @override
  _feature1 createState() => _feature1();
}

String selectedStateVinylGatesQ3 = null;

List<String> todos2 = List<String>();
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

class _feature1 extends State<VinylGatesFeatures3> {
  @override
  void initState() {
    super.initState();
    todos2.add("Image1");
    todos2.add("Image2");
    todos2.add("Image3");
    todos2.add("Image4");
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
                "type of hinges:",
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
                itemCount: 4,
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
                                'assets/images/Fence.JPG',
                                color: co2,
                                colorBlendMode: BlendMode.darken,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      print('presionado' + todos2[index]);
                      this.setState(() {
                        co2 = Colors.green[300];
                        selectedStateVinylGatesQ3 = todos2[index];
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

class BringAnswerVinylGates3 {
  String send() {
    return selectedStateVinylGatesQ3;
  }
}
