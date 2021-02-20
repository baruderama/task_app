import 'package:firebase_database/firebase_database.dart';

class Intercom {
  String _tipe;

  Intercom(this._tipe);

  Intercom.map(dynamic obj) {
    this._tipe = obj['tipe'];
  }

  String get tipe => _tipe;

  Intercom.fromSnapShot(DataSnapshot snapshot) {
    _tipe = snapshot.value['tipe'];
  }
}
