import 'dart:async';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:task_app/models/Iron.dart';
import 'package:task_app/models/IronStyle.dart';
import 'package:task_app/models/Task.dart';

FirebaseDatabase db = new FirebaseDatabase();
DatabaseReference taskReference = db.reference().child('task');

class TaskCrud {
  void addTask(IronStyle ironStyle) async {
    var ironStyleTask = <String, dynamic>{
      'height': '' + ironStyle.heigth,
      'spears_designs': '' + ironStyle.spearsDesigns,
      'pickets': '' + ironStyle.pickets,
      'channels': '' + ironStyle.channels,
      'post_size': '' + ironStyle.postSize,
      'paint': '' + ironStyle.paint,
      'top_finish': '' + ironStyle.topFinish,
    };

    var ironKey = taskReference
        .child('iron')
        //.child('key1')
        .push();

    ironKey.child('iron_Style').set(ironStyleTask);

    debugPrint(ironKey.key);
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
