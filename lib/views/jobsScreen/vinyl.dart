import 'dart:io';
import 'package:flutter/material.dart';
import 'package:task_app/models/photos/Photos.dart';

class Vinyl extends StatefulWidget {
  @override
  _feature1 createState() => _feature1();
}

String selectedStateIronQ8 = null;
List<Photos> todos3 = List<Photos>();
var co;

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

class _feature1 extends State<Vinyl> {
  @override
  void initState() {
    super.initState();
    todos3 = [
      Photos(
        nombreFoto: '1',
        foto: 'assets/images/jobs/vinyl/20190617_102436.jpg',
      ),
      Photos(
        nombreFoto: '2',
        foto: 'assets/images/jobs/vinyl/20190617_121050.jpg',
      ),
      Photos(
        nombreFoto: '3',
        foto: 'assets/images/jobs/vinyl/20210119_095246.jpg',
      ),
      Photos(
        nombreFoto: '4',
        foto: 'assets/images/jobs/vinyl/IMG_4489.JPG',
      ),
      Photos(
        nombreFoto: '5',
        foto: 'assets/images/jobs/vinyl/IMG_4593.JPG',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Vinyl",
        ),
        backgroundColor: Colors.blue,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(3.0),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white60,
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.center,
              child: Text(
                "jobs:",
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
                itemCount: todos3.length,
                itemBuilder: (context, index) => ItemCard(
                  image: todos3[index].foto,
                  imageName: todos3[index].nombreFoto,
                ),
              )),
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
  final String imageName;

  const ItemCard({Key key, this.press, this.image, this.imageName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                tag: imageName,
                child: Image.asset(image, color: co),
              ),
            ),
          ),
        ],
      ),
      onTap: () {
        print('presionado' + this.image.toString());
        selectedStateIronQ8 = imageName;
        co = Colors.green[300];
      },
    );
  }
}

class BringAnswerIron8 {
  String send() {
    return selectedStateIronQ8;
  }
}
