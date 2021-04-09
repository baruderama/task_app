import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:task_app/controller/services/CameraIntercomCrud.dart/CameraCrud.dart';
import 'package:task_app/controller/services/CameraIntercomCrud.dart/Intercom.dart';
import 'package:task_app/controller/services/FenceCrud/fenceCrud.dart';
import 'package:task_app/controller/services/GateCrud/gateCrud.dart';
import 'package:task_app/controller/services/Miscelenium/MisceleniumCrud.dart';
import 'package:task_app/controller/services/clientCrud/clientCrud.dart';
import 'package:task_app/controller/services/clientTaskCrud/clientTaskCrud.dart';

import 'package:task_app/models/Iron.dart';
import 'package:task_app/models/Iron/IronFence.dart';
import 'package:task_app/models/Iron/IronGates.dart';

import 'package:task_app/models/Task.dart';
import 'package:task_app/models/camerasIntercom/Cameras.dart';
import 'package:task_app/models/camerasIntercom/Intercom.dart';
import 'package:task_app/models/cantileverGates/cantileverGates.dart';
import 'package:task_app/models/chainLink/ChainLinkFence.dart';
import 'package:task_app/models/chainLink/ChainLinkGates.dart';
import 'package:task_app/models/clientTask/ClientTask.dart';
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
import 'package:task_app/views/FenceFeatures/Montage/montageFeatures1.dart';
import 'package:task_app/views/FenceFeatures/Montage/montageFeatures2.dart';
import 'package:task_app/views/FenceFeatures/Montage/montageFeatures3.dart';
import 'package:task_app/views/FenceFeatures/Montage/montageFeatures4.dart';
import 'package:task_app/views/FenceFeatures/Montage/montageFeatures5.dart';
import 'package:task_app/views/FenceFeatures/wood/woodFeatures1.dart';
import 'package:task_app/views/FenceFeatures/wood/woodFeatures2.dart';
import 'package:task_app/views/FenceFeatures/wood/woodFeatures3.dart';
import 'package:task_app/views/FenceFeatures/wood/woodFeatures4.dart';
import 'package:task_app/views/FenceFeatures/wood/woodFeatures5.dart';
import 'package:task_app/views/TaskCreation/features/feature1.dart';
import 'package:task_app/views/TaskCreation/features/feature2.dart';
import 'package:task_app/views/continueFinish.dart';
import 'package:task_app/views/homeScreen/homePage.dart';

class WoodFeatures extends StatefulWidget {
  @override
  _finalFeatures createState() => _finalFeatures();
}

String selectedAcceptWoods = null;

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
SigningCharacter _characterwood = SigningCharacter.Normal;

class _finalFeatures extends State<WoodFeatures> {
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
          "Wood Fence Features",
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
          WoodFeatures1(),
          WoodFeatures2(),
          WoodFeatures3(),
          WoodFeatures4(),
          WoodFeatures5(),
          RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0)),
            //   side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))),
            onPressed: () async {
              // addUsers('jorge', '1234');

              WoodFence newFence = new WoodFence(
                  "",
                  'wood',
                  BringAnswerWood2().send(),
                  BringAnswerWood1().send(),
                  BringAnswerWood3().send(),
                  BringAnswerWood4().send(),
                  BringAnswerWood5().send());
              //print(BringAnswerIron1().send());
              String key = await FenceCrud().addWoodTask(newFence);
              print("hola");
              print(lastkey);
              ClientTask newClientTask = ClientTask("", key, lastkey, "none");
              ClientTaskCrud().addClientTask(newClientTask);
              //ClientCrud().updateClient(lastkey);

              //Navigator.pop(context);
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => ContinueFinish()));

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

              //IronGates newGate = new IronGates("1", "1", "1", "1", "1", "1");
              //MontageGates newGate = new MontageGates("1", "1", "1", "1", "1");
              /*
              MontageFence newFence = new MontageFence(
                  BringAnswerMontage1().send(),
                  BringAnswerMontage2().send(),
                  BringAnswerMontage3().send(),
                  BringAnswerMontage4().send(),
                  BringAnswerMontage5().send());
                  */

              //WoodGates newGate = new WoodGates("1", "1", "1", "1", "1", "1");
              //WoodTyG newTyG = new WoodTyG("1", "1");

              //VinylFence newFence = new VinylFence("1", "1", "1", "1", "1");
              //VinylGates newGate = new VinylGates("1", "1", "1");
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
              //GateCrud().addMontageTask(newGate);
              //FenceCrud().addMontageTask(newFence);

              //GateCrud().addWoodTask(newGate);

              //FenceCrud().addWoodTyGTask(newTyG);

              //GateCrud().addChainLinkTask(newGatelink);
              //GateCrud().addVinylTask(newGate);
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
