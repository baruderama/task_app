import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import 'package:task_app/models/Iron/IronFence.dart';
import 'package:task_app/models/Iron/IronGates.dart';
import 'package:task_app/models/montage/MontageGates.dart';

FirebaseDatabase db = new FirebaseDatabase();
DatabaseReference taskReference = db.reference().child('task');

class GateCrud {
  void addIronTask(IronGates ironGates) async {
    var ironGateTask = <String, dynamic>{
      'style': '' + ironGates.style,
      'typeLocks': '' + ironGates.typeLocks,
      'typeHinges': '' + ironGates.typeHinges,
      'mesh': '' + ironGates.mesh,
      'harbor': '' + ironGates.harbor,
      'swing': '' + ironGates.swing,
    };

    var gateKey = taskReference.child('Gates').push();

    gateKey.child('iron').set(ironGateTask);

    debugPrint(gateKey.key);
  }

  void addMontageTask(MontageGates montageGates) async {
    var montageGateTask = <String, dynamic>{
      'style': '' + montageGates.style,
      'typeLocks': '' + montageGates.typeLocks,
      'typeHinges': '' + montageGates.typeHinges,
      'mesh': '' + montageGates.mesh,
      'opening_end_swing': '' + montageGates.openingEndSwing,
    };

    var gateKey = taskReference.child('Gates').push();

    gateKey.child('montage').set(montageGateTask);

    debugPrint(gateKey.key);
  }
  /*

  void deleteProduct(Task product) async {
    await productReference.child(product.id).remove().then((_) {
      print('Transaction  committed.');
    });
  }

  void updateProduct(Task product, int resta) async {
    int valor = int.parse(product.stock) - resta;
    await productReference.child(product.id).update({
      "name": "" + product.name,
      "description": "" + product.description,
      "stock": "" + valor.toString(),
    }).then((_) {
      print('Transaction  committed.');
    });
  }
  */
}
