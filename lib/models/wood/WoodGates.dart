import 'package:firebase_database/firebase_database.dart';

class WoodGates {
  String _id;
  String _t;
  String _woodGates;
  String _ironFrame;
  String _typeLocks;
  String _typeHinges;
  String _harbor;
  String _openingEndSwing;
  //String _topFinish;

  WoodGates(this._id, this._t, this._ironFrame, this._typeLocks,
      this._typeHinges, this._harbor, this._openingEndSwing, this._woodGates);

  WoodGates.map(dynamic obj) {
    this._t = obj['tipo'];
    this._ironFrame = obj['ironFrame'];
    this._typeLocks = obj['typeLocks'];
    this._typeHinges = obj['typeHinges'];
    this._harbor = obj['harbor'];
    this._openingEndSwing = obj['openingEndSwing'];
    this._woodGates = obj['WoodGates'];
  }

  String get id => _id;
  String get t => _t;
  String get ironFrame => _ironFrame;
  String get typeLocks => _typeLocks;
  String get typeHinges => _typeHinges;
  String get harbor => _harbor;
  String get openingEndSwing => _openingEndSwing;
  String get woodGates => _woodGates;

  WoodGates.fromSnapShot(DataSnapshot snapshot) {
    _id = snapshot.key;
    _t = snapshot.value['tipo'];
    _ironFrame = snapshot.value['ironFrame'];
    _typeLocks = snapshot.value['typeLocks'];
    _typeHinges = snapshot.value['typeHinges'];
    _harbor = snapshot.value['harbor'];
    _woodGates = snapshot.value['WoodGates'];
    _openingEndSwing = snapshot.value['openingEndSwing'];
  }
}
