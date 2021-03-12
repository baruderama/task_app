import 'dart:async';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:task_app/models/Iron.dart';
import 'package:task_app/models/Iron/IronFence.dart';
import 'package:task_app/models/Iron/IronGates.dart';
import 'package:task_app/models/Task.dart';
import 'package:task_app/models/camerasIntercom/Cameras.dart';
import 'package:task_app/models/chainLink/ChainLinkFence.dart';
import 'package:task_app/models/miscellaneo/Miscellaneous.dart';
import 'package:task_app/models/montage/MontageFence.dart';
import 'package:task_app/models/railing/RailingFence.dart';
import 'package:task_app/models/vinyl/VinylFence.dart';
import 'package:task_app/models/wood/WoodFence.dart';
import 'package:task_app/models/wood/WoodT&G.dart';

FirebaseDatabase db = new FirebaseDatabase();
DatabaseReference taskReference = db.reference().child('task');

class MisceleniumCrud {
  Future<String> addMisceleniumTask(Miscellaneous miscellaneous) async {
    var miscellaneousTask = <String, dynamic>{
      'bumper_post': '' + miscellaneous.bumperPost,
      'guard_rail': '' + miscellaneous.guardRail,
      'window_guard': '' + miscellaneous.windowGuard,
      'scissor_gate': '' + miscellaneous.scissorGate,
    };

    var fenceKey = taskReference.child('Miscellaneous').push();

    fenceKey.set(miscellaneousTask);

    debugPrint(fenceKey.key);
    return fenceKey.key;
  }
}
