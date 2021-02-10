import 'package:firebase_database/firebase_database.dart';
import 'package:task_app/models/IronStyle.dart';

class Iron {
  IronStyle _styleIron;
  //IronGates _gatesIron;

  Iron(this._styleIron);

  Iron.map(dynamic obj) {
    this._styleIron = obj['styleIron'];
  }

  IronStyle get status => _styleIron;

  Iron.fromSnapShot(DataSnapshot snapshot) {
    _styleIron = snapshot.value['styleIron'];
  }
}
