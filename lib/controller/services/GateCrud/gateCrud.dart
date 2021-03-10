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
  Future<String> addIronTask(IronGates ironGates) async {
    var ironGateTask = <String, dynamic>{
      'tipo': '' + ironGates.t,
      'style': '' + ironGates.style,
      'typeLocks': '' + ironGates.typeLocks,
      'typeHinges': '' + ironGates.typeHinges,
      'mesh': '' + ironGates.mesh,
      'harbor': '' + ironGates.harbor,
      'swing': '' + ironGates.swing,
    };

    var gateKey = taskReference.child('Gates').push();

    gateKey.set(ironGateTask);

    debugPrint(gateKey.key);
    return gateKey.key;
  }

  Future<String> addMontageTask(MontageGates montageGates) async {
    var montageGateTask = <String, dynamic>{
      'tipo': '' + montageGates.t,
      'style': '' + montageGates.style,
      'typeLocks': '' + montageGates.typeLocks,
      'typeHinges': '' + montageGates.typeHinges,
      'mesh': '' + montageGates.mesh,
      'opening_end_swing': '' + montageGates.openingEndSwing,
    };

    var gateKey = taskReference.child('Gates').push();

    gateKey.set(montageGateTask);

    debugPrint(gateKey.key);
    return gateKey.key;
  }

  Future<String> addWoodTask(WoodGates woodGates) async {
    var woodGateTask = <String, dynamic>{
      'tipo': '' + woodGates.t,
      'WoodGates': '' + woodGates.woodGates,
      'typeLocks': '' + woodGates.typeLocks,
      'typeHinges': '' + woodGates.typeHinges,
      'mesh': '' + woodGates.harbor,
      'opening_end_swing': '' + woodGates.openingEndSwing,
      'ironFrame': '' + woodGates.ironFrame,
    };

    var gateKey = taskReference.child('Gates').push();

    gateKey.set(woodGateTask);

    debugPrint(gateKey.key);
    return gateKey.key;
  }

  Future<String> addVinylTask(VinylGates vinylGates) async {
    var vinylGateTask = <String, dynamic>{
      'tipo': '' + vinylGates.t,
      'typeLocks': '' + vinylGates.typeLocks,
      'typeHinges': '' + vinylGates.typeHinges,
      'opening_end_swing': '' + vinylGates.openingEndSwing,
    };

    var gateKey = taskReference.child('Gates').push();

    gateKey.set(vinylGateTask);

    debugPrint(gateKey.key);
    return gateKey.key;
  }

  Future<String> addChainLinkTask(ChainLinkGates chainLinkGates) async {
    var chainLinkGateTask = <String, dynamic>{
      'tipo': '' + chainLinkGates.t,
      'single_doble': '' + chainLinkGates.singleDoble,
      'typeLocks': '' + chainLinkGates.typeLocks,
      'typeHinges': '' + chainLinkGates.typeHinges,
      'size_post': '' + chainLinkGates.sizePost,
      'opening_swing': '' + chainLinkGates.openingSwing,
    };

    var gateKey = taskReference.child('Gates').push();

    gateKey.set(chainLinkGateTask);

    debugPrint(gateKey.key);
    return gateKey.key;
  }

  Future<String> addCantileverTask(CantileverGates cantileverGates) async {
    var cantileverGateTask = <String, dynamic>{
      'tipo': '' + cantileverGates.t,
      'style': '' + cantileverGates.style,
      'typeLocks': '' + cantileverGates.typeLocks,
      'motor': '' + cantileverGates.motor,
      'size_post': '' + cantileverGates.sizePost,
    };

    var gateKey = taskReference.child('Gates').push();

    gateKey.set(cantileverGateTask);

    debugPrint(gateKey.key);
    return gateKey.key;
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
