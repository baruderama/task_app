import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import 'package:task_app/models/Iron/IronFence.dart';
import 'package:task_app/models/Iron/IronGates.dart';
import 'package:task_app/models/cantileverGates/cantileverGates.dart';
import 'package:task_app/models/chainLink/ChainLinkGates.dart';
import 'package:task_app/models/montage/MontageGates.dart';
import 'package:task_app/models/vinyl/VinylGates.dart';
import 'package:task_app/models/wood/WoodGates.dart';

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

  void addWoodTask(WoodGates woodGates) async {
    var woodGateTask = <String, dynamic>{
      'WoodGates': '' + woodGates.woodGates,
      'typeLocks': '' + woodGates.typeLocks,
      'typeHinges': '' + woodGates.typeHinges,
      'mesh': '' + woodGates.harbor,
      'opening_end_swing': '' + woodGates.openingEndSwing,
      'ironFrame': '' + woodGates.ironFrame,
    };

    var gateKey = taskReference.child('Gates').push();

    gateKey.child('wood').set(woodGateTask);

    debugPrint(gateKey.key);
  }

  void addVinylTask(VinylGates vinylGates) async {
    var vinylGateTask = <String, dynamic>{
      'typeLocks': '' + vinylGates.typeLocks,
      'typeHinges': '' + vinylGates.typeHinges,
      'opening_end_swing': '' + vinylGates.openingEndSwing,
    };

    var gateKey = taskReference.child('Gates').push();

    gateKey.child('vinyl').set(vinylGateTask);

    debugPrint(gateKey.key);
  }

  void addChainLinkTask(ChainLinkGates chainLinkGates) async {
    var chainLinkGateTask = <String, dynamic>{
      'single_doble': '' + chainLinkGates.singleDoble,
      'typeLocks': '' + chainLinkGates.typeLocks,
      'typeHinges': '' + chainLinkGates.typeHinges,
      'size_post': '' + chainLinkGates.sizePost,
      'opening_swing': '' + chainLinkGates.openingSwing,
    };

    var gateKey = taskReference.child('Gates').push();

    gateKey.child('chain_link').set(chainLinkGateTask);

    debugPrint(gateKey.key);
  }

  void addCantileverTask(CantileverGates cantileverGates) async {
    var cantileverGateTask = <String, dynamic>{
      'style': '' + cantileverGates.style,
      'typeLocks': '' + cantileverGates.typeLocks,
      'motor': '' + cantileverGates.motor,
      'size_post': '' + cantileverGates.sizePost,
    };

    var gateKey = taskReference.child('Gates').push();

    gateKey.child('cantilever_gates').set(cantileverGateTask);

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
