import 'package:firebase_database/firebase_database.dart';

class MontageGates {
  String _style;
  String _typeLocks;
  String _typeHinges;
  String _mesh;
  String _openingEndSwing;
  //String _topFinish;

  MontageGates(this._style, this._typeLocks, this._typeHinges, this._mesh,
      this._openingEndSwing);

  MontageGates.map(dynamic obj) {
    this._style = obj['style'];
    this._typeLocks = obj['typeLocks'];
    this._typeHinges = obj['typeHinges'];
    this._mesh = obj['mesh'];
    this._openingEndSwing = obj['openingEndSwing'];
  }

  String get style => _style;
  String get typeLocks => _typeLocks;
  String get typeHinges => _typeHinges;
  String get mesh => _mesh;
  String get openingEndSwing => _openingEndSwing;

  MontageGates.fromSnapShot(DataSnapshot snapshot) {
    _style = snapshot.value['style'];
    _typeLocks = snapshot.value['typeLocks'];
    _typeHinges = snapshot.value['typeHinges'];
    _mesh = snapshot.value['mesh'];
    _openingEndSwing = snapshot.value['openingEndSwing'];
  }
}
