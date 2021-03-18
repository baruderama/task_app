import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_app/controller/services/clientCrud/clientCrud.dart';
import 'package:task_app/models/clientModel/Client.dart';
import 'package:task_app/views/TaskCreation/fenceGate.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

int globalCount = 0;
String lastkey;
TextEditingController _clientNameController = TextEditingController();

class _HomePage extends State<HomePage> {
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
        Colors.red[200],
        Colors.red[300],
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
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Client Name:"),
                      content: Form(
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                        TextFormField(
                          controller: _clientNameController,
                          validator: (value) {
                            return value.isNotEmpty ? null : "Invalido";
                          },
                          decoration:
                              InputDecoration(hintText: "Ex: Mike, Juan, etc"),
                        ),
                      ])),
                      actions: <Widget>[
                        FlatButton(
                            onPressed: () {
                              if (globalCount == 0) {
                                globalCount = 1;
                                Client newClient = new Client("", "pendiente",
                                    "nada", _clientNameController.text);
                                ClientCrud().addClient(newClient);
                                productReferenceClient
                                    .once()
                                    .then((DataSnapshot snapshot) {
                                  Map<dynamic, dynamic> values = snapshot.value;

                                  values.forEach((key, values) {
                                    if (values["status"] == 'pending') {
                                      debugPrint(key);
                                      lastkey = key;
                                    }
                                  });
                                });
                              }
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) => FenceGate()));
                            },
                            child: Text("Add"))
                      ],
                    );
                  });
            },
            padding: EdgeInsets.symmetric(horizontal: 50),
            color: Colors.blue[700],
            textColor: Colors.white,
            // child: Image.asset(
            //  "assets/images/cerebroAzul.png",
            // height: size.height * 0.25,
            //  ),
            child: Text("Task ", style: TextStyle(fontSize: 15)),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ]),
    ));
  }
}
