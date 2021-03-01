import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:task_app/controller/services/CameraIntercomCrud.dart/CameraCrud.dart';
import 'package:task_app/controller/services/CameraIntercomCrud.dart/Intercom.dart';
import 'package:task_app/controller/services/FenceCrud/fenceCrud.dart';
import 'package:task_app/controller/services/GateCrud/gateCrud.dart';
import 'package:task_app/controller/services/Miscelenium/MisceleniumCrud.dart';

import 'package:task_app/models/Iron.dart';
import 'package:task_app/models/Iron/IronFence.dart';
import 'package:task_app/models/Iron/IronGates.dart';

import 'package:task_app/models/Task.dart';
import 'package:task_app/models/camerasIntercom/Cameras.dart';
import 'package:task_app/models/camerasIntercom/Intercom.dart';
import 'package:task_app/models/cantileverGates/cantileverGates.dart';
import 'package:task_app/models/chainLink/ChainLinkFence.dart';
import 'package:task_app/models/chainLink/ChainLinkGates.dart';
import 'package:task_app/models/miscellaneo/Miscellaneous.dart';
import 'package:task_app/models/montage/MontageFence.dart';
import 'package:task_app/models/montage/MontageGates.dart';
import 'package:task_app/models/railing/RailingFence.dart';
import 'package:task_app/models/vinyl/VinylFence.dart';
import 'package:task_app/models/vinyl/VinylGates.dart';
import 'package:task_app/models/wood/WoodFence.dart';
import 'package:task_app/models/wood/WoodGates.dart';
import 'package:task_app/models/wood/WoodT&G.dart';
import 'package:task_app/views/FenceFeatures/Iron/ironFeature1.dart';
import 'package:task_app/views/FenceFeatures/Iron/ironFeature2.dart';
import 'package:task_app/views/FenceFeatures/Iron/ironFeature3.dart';
import 'package:task_app/views/FenceFeatures/Iron/ironFeature4.dart';
import 'package:task_app/views/FenceFeatures/Iron/ironFeature5.dart';
import 'package:task_app/views/FenceFeatures/Iron/ironFeature6.dart';
import 'package:task_app/views/FenceFeatures/Iron/ironFeature7.dart';
import 'package:task_app/views/GatesFeatures/iron/ironGatesFeatures1.dart';
import 'package:task_app/views/GatesFeatures/iron/ironGatesFeatures2.dart';
import 'package:task_app/views/GatesFeatures/iron/ironGatesFeatures3.dart';
import 'package:task_app/views/GatesFeatures/iron/ironGatesFeatures4.dart';
import 'package:task_app/views/GatesFeatures/iron/ironGatesFeatures5.dart';
import 'package:task_app/views/GatesFeatures/iron/ironGatesFeatures6.dart';
import 'package:task_app/views/GatesFeatures/montage/montageGatesFeatures1.dart';
import 'package:task_app/views/GatesFeatures/montage/montageGatesFeatures2.dart';
import 'package:task_app/views/GatesFeatures/montage/montageGatesFeatures3.dart';
import 'package:task_app/views/GatesFeatures/montage/montageGatesFeatures4.dart';
import 'package:task_app/views/GatesFeatures/montage/montageGatesFeatures5.dart';
import 'package:task_app/views/GatesFeatures/vinyl/vinylGatesFeatures1.dart';
import 'package:task_app/views/GatesFeatures/vinyl/vinylGatesFeatures2.dart';
import 'package:task_app/views/GatesFeatures/vinyl/vinylGatesFeatures3.dart';
import 'package:task_app/views/GatesFeatures/wood/woodGatesFeatures1.dart';
import 'package:task_app/views/GatesFeatures/wood/woodGatesFeatures2.dart';
import 'package:task_app/views/GatesFeatures/wood/woodGatesFeatures3.dart';
import 'package:task_app/views/GatesFeatures/wood/woodGatesFeatures4.dart';
import 'package:task_app/views/GatesFeatures/wood/woodGatesFeatures5.dart';
import 'package:task_app/views/TaskCreation/features/feature1.dart';
import 'package:task_app/views/TaskCreation/features/feature2.dart';

class VinylGatesFeatures extends StatefulWidget {
  @override
  _finalFeatures createState() => _finalFeatures();
}

class _finalFeatures extends State<VinylGatesFeatures> {
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
          "Vinyl Gates Features",
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
          VinylGatesFeature1(),
          VinylGatesFeatures2(),
          VinylGatesFeatures3(),
          RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0)),
            //   side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))),
            onPressed: () async {
              // addUsers('jorge', '1234');
              /*
              IronFence newStyle = new IronFence(
                  BringAnswerIron1().send(),
                  BringAnswerIron2().send(),
                  BringAnswerIron3().send(),
                  BringAnswerIron4().send(),
                  BringAnswerIron5().send(),
                  BringAnswerIron6().send(),
                  BringAnswerIron7().send());
              print(BringAnswerIron1().send());
              */
              /*
              IronGates newGate = new IronGates(
                  BringAnswerIronGates1().send(),
                  BringAnswerIronGates2().send(),
                  BringAnswerIronGates3().send(),
                  BringAnswerIronGates4().send(),
                  BringAnswerIronGates5().send(),
                  BringAnswerIronGates6().send());
                  */

              /*
              MontageGates newGate = new MontageGates(
                  BringAnswerMontageGates1().send(),
                  BringAnswerMontageGates2().send(),
                  BringAnswerMontageGates3().send(),
                  BringAnswerMontageGates4().send(),
                  BringAnswerMontageGates5().send());
                  */
              //MontageFence newFence = new MontageFence("1", "1", "1", "1", "1");

              //WoodFence newFence = new WoodFence("1", "1", "1", "1");
              /*
              WoodGates newGate = new WoodGates(
                  BringAnswerWoodGates1().send(),
                  BringAnswerWoodGates2().send(),
                  BringAnswerWoodGates1().send(),
                  BringAnswerWoodGates3().send(),
                  BringAnswerWoodGates4().send(),
                  BringAnswerWoodGates5().send());
                  */
              //WoodTyG newTyG = new WoodTyG("1", "1");

              //VinylFence newFence = new VinylFence("1", "1", "1", "1", "1");
              VinylGates newGate = new VinylGates(
                  BringAnswerVinylGates3().send(),
                  BringAnswerVinylGates2().send(),
                  BringAnswerVinylGates1().send());
              /*
              ChainLinkGates newGatelink =
                  new ChainLinkGates("1", "1", "1", "1", "1");

              ChainLinkFence newFenceink = new ChainLinkFence(
                  "1", "1", "1", "1", "1", "1", "1", "1", "1");

              RailingFence newFenceRailing = new RailingFence("1", "1", "1");

              Cameras newCamera =
                  new Cameras("1", "1", "1", "1", "1", "1", "1");
              Intercom newIntercom = new Intercom("1");

              CantileverGates newCantelever =
                  new CantileverGates("1", "1", "1", "1");

              Miscellaneous newMisce = new Miscellaneous("1", "1", "1", "1");
                */
              /*
              Iron newIron = new Iron(newStyle);
              List<Iron> list = new List<Iron>();
              list.add(newIron);

              Task newTask = new Task("", list);
              */

              debugPrint('aqui');
              //FenceCrud().addIronTask(newStyle);
              //GateCrud().addIronTask(newGate);
              //GateCrud().addMontageTask(newGate);
              //FenceCrud().addMontageTask(newFence);

              //GateCrud().addWoodTask(newGate);
              //FenceCrud().addWoodTask(newFence);
              //FenceCrud().addWoodTyGTask(newTyG);

              //GateCrud().addChainLinkTask(newGatelink);
              GateCrud().addVinylTask(newGate);
              // FenceCrud().addVinylTask(newFence);

              //FenceCrud().addChainLinkTask(newFenceink);

              //FenceCrud().addRailingTask(newFenceRailing);

              //CamaraCrud().addCamaraTask(newCamera);
              //IntercomCrud().addIntercomTask(newIntercom);
              //GateCrud().addCantileverTask(newCantelever);
              //MisceleniumCrud().addMisceleniumTask(newMisce);

              // TaskCrud().addTask(newStyle);
              //GateCrud().addIronTask(newGate);
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
