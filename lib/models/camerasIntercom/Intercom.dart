import 'package:firebase_database/firebase_database.dart';

class Intercom {
  String _id;
  String _tipe;

  Intercom(this._id, this._tipe);

  Intercom.map(dynamic obj) {
    this._tipe = obj['tipe'];
  }

  String get id => _id;
  String get tipe => _tipe;

  Intercom.fromSnapShot(DataSnapshot snapshot) {
    _id = snapshot.key;
    _tipe = snapshot.value['tipe'];
  }
}
