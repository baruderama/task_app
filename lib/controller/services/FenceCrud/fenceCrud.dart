import 'dart:async';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:task_app/models/Iron.dart';
import 'package:task_app/models/Iron/IronFence.dart';
import 'package:task_app/models/Iron/IronGates.dart';
import 'package:task_app/models/Task.dart';
import 'package:task_app/models/montage/MontageFence.dart';

FirebaseDatabase db = new FirebaseDatabase();
DatabaseReference taskReference = db.reference().child('task');

class FenceCrud {
  void addIronTask(IronFence ironFence) async {
    var ironStyleTask = <String, dynamic>{
      'height': '' + ironFence.heigth,
      'spears_designs': '' + ironFence.spearsDesigns,
      'pickets': '' + ironFence.pickets,
      'channels': '' + ironFence.channels,
      'post_size': '' + ironFence.postSize,
      'paint': '' + ironFence.paint,
      'top_finish': '' + ironFence.topFinish,
    };

    var fenceKey = taskReference.child('Fence').push();

    fenceKey.child('iron').set(ironStyleTask);

    debugPrint(fenceKey.key);
  }

  void addMontageTask(MontageFence montageFence) async {
    var montageFenceTask = <String, dynamic>{
      'height': '' + montageFence.heigth,
      'spears_designs': '' + montageFence.spearsDesigns,
      'style': '' + montageFence.style,
      'post_size': '' + montageFence.postSize,
      'top_finish': '' + montageFence.topFinish,
    };

    var fenceKey = taskReference.child('Fence').push();

    fenceKey.child('montage').set(montageFenceTask);

    debugPrint(fenceKey.key);
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
