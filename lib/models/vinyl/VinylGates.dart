import 'package:firebase_database/firebase_database.dart';

class VinylGates {
  String _typeLocks;
  String _typeHinges;
  String _openingEndSwing;
  //String _topFinish;

  VinylGates(this._typeLocks, this._typeHinges, this._openingEndSwing);

  VinylGates.map(dynamic obj) {
    this._typeLocks = obj['typeLocks'];
    this._typeHinges = obj['typeHinges'];
    this._openingEndSwing = obj['openingEndSwing'];
  }

  String get typeLocks => _typeLocks;
  String get typeHinges => _typeHinges;
  String get openingEndSwing => _openingEndSwing;

  VinylGates.fromSnapShot(DataSnapshot snapshot) {
    _typeLocks = snapshot.value['typeLocks'];
    _typeHinges = snapshot.value['typeHinges'];
    _openingEndSwing = snapshot.value['openingEndSwing'];
  }
}
