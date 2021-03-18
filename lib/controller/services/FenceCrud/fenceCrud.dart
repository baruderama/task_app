import 'dart:async';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:task_app/models/Iron.dart';
import 'package:task_app/models/Iron/IronFence.dart';
import 'package:task_app/models/Iron/IronGates.dart';
import 'package:task_app/models/Task.dart';
import 'package:task_app/models/chainLink/ChainLinkFence.dart';
import 'package:task_app/models/montage/MontageFence.dart';
import 'package:task_app/models/railing/RailingFence.dart';
import 'package:task_app/models/vinyl/VinylFence.dart';
import 'package:task_app/models/wood/WoodFence.dart';
import 'package:task_app/models/wood/WoodT&G.dart';

FirebaseDatabase db = new FirebaseDatabase();
DatabaseReference taskReference = db.reference().child('task');

class FenceCrud {
  Future<String> addIronTask(IronFence ironFence) async {
    var ironStyleTask = <String, dynamic>{
      'tipo': '' + ironFence.t,
      'heigth': '' + ironFence.heigth,
      'spearsDesigns': '' + ironFence.spearsDesigns,
      'pickets': '' + ironFence.pickets,
      'channels': '' + ironFence.channels,
      'postSize': '' + ironFence.postSize,
      'paint': '' + ironFence.paint,
      'topFinish': '' + ironFence.topFinish,
    };

    var fenceKey = taskReference.child('Fence').push();

    fenceKey.set(ironStyleTask);

    debugPrint(fenceKey.key);
    return fenceKey.key;
  }

  Future<String> addMontageTask(MontageFence montageFence) async {
    var montageFenceTask = <String, dynamic>{
      'tipo': '' + montageFence.t,
      'heigth': '' + montageFence.heigth,
      'spearsDesigns': '' + montageFence.spearsDesigns,
      'style': '' + montageFence.style,
      'postSize': '' + montageFence.postSize,
      'topFinish': '' + montageFence.topFinish,
    };

    var fenceKey = taskReference.child('Fence').push();

    fenceKey.set(montageFenceTask);

    debugPrint(fenceKey.key);
    return fenceKey.key;
  }

  Future<String> addWoodTask(WoodFence woodFence) async {
    var ironStyleTask = <String, dynamic>{
      'tipo': '' + woodFence.t,
      'heigth': '' + woodFence.heigth,
      'type_fence': '' + woodFence.tapeFence,
      'post_size': '' + woodFence.postSize,
      'top_finish': '' + woodFence.topFinish,
    };

    var fenceKey = taskReference.child('Fence').push();

    fenceKey.set(ironStyleTask);

    debugPrint(fenceKey.key);
    return fenceKey.key;
  }

  Future<String> addWoodTyGTask(WoodTyG woodTyG) async {
    var ironStyleTask = <String, dynamic>{
      'tipo': '' + woodTyG.t,
      'iron_wood': '' + woodTyG.ironWood,
      'vertical_horizontal': '' + woodTyG.verticalHorizontal,
    };

    var fenceKey = taskReference.child('Fence').push();

    fenceKey.set(ironStyleTask);

    debugPrint(fenceKey.key);
    return fenceKey.key;
  }

  Future<String> addVinylTask(VinylFence vinylFence) async {
    var vinylTask = <String, dynamic>{
      'tipo': '' + vinylFence.t,
      'heigth': '' + vinylFence.heigth,
      'type_style': '' + vinylFence.style,
      'postCaps': '' + vinylFence.postCaps,
      'top_finish': '' + vinylFence.topFinish,
      'color': '' + vinylFence.color,
    };

    var fenceKey = taskReference.child('Fence').push();

    fenceKey.set(vinylTask);

    debugPrint(fenceKey.key);
    return fenceKey.key;
  }

  Future<String> addChainLinkTask(ChainLinkFence chainLinkFence) async {
    var chainTask = <String, dynamic>{
      'tipo': '' + chainLinkFence.t,
      'type_fence': '' + chainLinkFence.typeFence,
      'heigth': '' + chainLinkFence.heigth,
      'color': '' + chainLinkFence.color,
      'line_post': '' + chainLinkFence.linePost,
      'topFinish': '' + chainLinkFence.topFinish,
      'privacy': '' + chainLinkFence.privacy,
      'security': '' + chainLinkFence.security,
      'terminale_post': '' + chainLinkFence.terminalePost,
      'top_rails': '' + chainLinkFence.topRails,
    };

    var fenceKey = taskReference.child('Fence').push();

    fenceKey.set(chainTask);

    debugPrint(fenceKey.key);
    return fenceKey.key;
  }

  Future<String> addRailingTask(RailingFence railingFence) async {
    var railingTask = <String, dynamic>{
      'tipo': '' + railingFence.t,
      'heigth': '' + railingFence.heigth,
      'size_pickets': '' + railingFence.sizePIckets,
      'color': '' + railingFence.color,
      'style': '' + railingFence.style
    };

    var fenceKey = taskReference.child('Fence').push();

    fenceKey.set(railingTask);

    debugPrint(fenceKey.key);
    return fenceKey.key;
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
