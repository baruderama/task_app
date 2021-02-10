import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:task_app/controller/services/taskCrud.dart';
import 'package:task_app/models/Iron.dart';
import 'package:task_app/models/IronStyle.dart';
import 'package:task_app/models/Task.dart';
import 'package:task_app/views/TaskCreation/features/feature1.dart';
import 'package:task_app/views/TaskCreation/features/feature2.dart';

class FinalFeatures extends StatefulWidget {
  @override
  _finalFeatures createState() => _finalFeatures();
}

class _finalFeatures extends State<FinalFeatures> {
  final controller = PageController(
    initialPage: 0,
  );

  int _current = 0;

/*
  Widget decideForm() {
    debugPrint(BringAnswerPatient2().send().toString());

    if (BringAnswerPatient2().send().toString() == '1') {
      return SymptomsFormPatientQ2ON();
    } else {
      return SymptomsFormPatientQ2OFF();
    }
  }
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Formulario de síntomas",
        ),
        backgroundColor: Colors.blue,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(3.0),
          ),
        ],
      ),
      body: PageView(
        controller: controller,
        scrollDirection: Axis.vertical,
        children: [
          Feature1(),
          Feature2(),
          RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0)),
            //   side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))),
            onPressed: () async {
              // addUsers('jorge', '1234');
              IronStyle newStyle =
                  new IronStyle("1", "1", "1", "1", "1", "1", "1");
              Iron newIron = new Iron(newStyle);
              List<Iron> list = new List<Iron>();
              list.add(newIron);

              Task newTask = new Task("", list);

              debugPrint('aqui');
              TaskCrud().addTask(newStyle);
            },
            padding: EdgeInsets.symmetric(horizontal: 50),
            color: Color.fromRGBO(0, 160, 227, 1),
            textColor: Colors.white,
            child: Text("save", style: TextStyle(fontSize: 15)),
          ),
          //debugPrint('hola');
          //debugPrint(BringAnswerPatient2().send());
          // symptomsFormPatientQ3(),
          //symptomsFormPatientQ4(),
          //symptomsFormPatientQ5(),

          /*symptomsFormQ17(),
          symptomsFormQ18(),
          symptomsFormQ19(),
          symptomsFormQ20(),
          symptomsFormQ21(),
          symptomsFormQ22(),
          symptomsFormQ23(),
          symptomsFormQ24(),
          symptomsFormQ25(),
          symptomsFormQ26(),
          symptomsFormQ27(),
          symptomsFormQ28(),*/
        ],
      ),
    );
  }
}
