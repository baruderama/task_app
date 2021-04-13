import 'package:firebase_database/firebase_database.dart';

class Intercom {
  String _id;
  String _tipe;
  String _t;

  Intercom(this._id, this._tipe, this._t);

  Intercom.map(dynamic obj) {
    this._tipe = obj['tipe'];
    this._t = obj['tipo'];
  }

  String get id => _id;
  String get tipe => _tipe;
  String get t => _t;

  Intercom.fromSnapShot(DataSnapshot snapshot) {
    _id = snapshot.key;
    _tipe = snapshot.value['tipe'];
    _t = snapshot.value['tipo'];
  }
}
