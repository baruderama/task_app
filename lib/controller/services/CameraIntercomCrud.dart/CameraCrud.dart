import 'dart:async';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:task_app/models/Iron.dart';
import 'package:task_app/models/Iron/IronFence.dart';
import 'package:task_app/models/Iron/IronGates.dart';
import 'package:task_app/models/Task.dart';
import 'package:task_app/models/camerasIntercom/Cameras.dart';
import 'package:task_app/models/chainLink/ChainLinkFence.dart';
import 'package:task_app/models/montage/MontageFence.dart';
import 'package:task_app/models/railing/RailingFence.dart';
import 'package:task_app/models/vinyl/VinylFence.dart';
import 'package:task_app/models/wood/WoodFence.dart';
import 'package:task_app/models/wood/WoodT&G.dart';

FirebaseDatabase db = new FirebaseDatabase();
DatabaseReference taskReference = db.reference().child('task');

class CamaraCrud {
  Future<String> addCamaraTask(Cameras camara) async {
    var camaraTask = <String, dynamic>{
      'tipo': '' + camara.t,
      'lp': '' + camara.lp,
      '4k': '' + camara.cuatrok,
      'hd': '' + camara.hd,
      'dvr': '' + camara.dvr,
      'hdSize': '' + camara.hdSize,
      'number_cameras': '' + camara.numberCameras,
      'size_tv': '' + camara.sizeTv,
    };

    var fenceKey = taskReference.child('Camara').push();

    fenceKey.set(camaraTask);

    debugPrint(fenceKey.key);
    return fenceKey.key;
  }
}
