import 'package:firebase_database/firebase_database.dart';
import 'package:task_app/models/Iron/IronFence.dart';

class Iron {
  IronFence _styleIron;
  //IronGates _gatesIron;

  Iron(this._styleIron);

  Iron.map(dynamic obj) {
    this._styleIron = obj['styleIron'];
  }

  IronFence get status => _styleIron;

  Iron.fromSnapShot(DataSnapshot snapshot) {
    _styleIron = snapshot.value['styleIron'];
  }
}
