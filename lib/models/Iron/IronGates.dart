import 'package:firebase_database/firebase_database.dart';

class IronGates {
  String _id;
  String _t;
  String _style;
  String _typeLocks;
  String _typeHinges;
  String _mesh;
  String _harbor;
  String _swing;
  //String _topFinish;

  IronGates(this._id, this._t, this._style, this._typeLocks, this._typeHinges,
      this._mesh, this._harbor, this._swing);

  IronGates.map(dynamic obj) {
    this._t = obj['tipo'];
    this._style = obj['style'];
    this._typeLocks = obj['typeLocks'];
    this._typeHinges = obj['typeHinges'];
    this._mesh = obj['mesh'];
    this._harbor = obj['harbor'];
    this._swing = obj['swing'];
  }

  String get t => _t;
  String get style => _style;
  String get typeLocks => _typeLocks;
  String get typeHinges => _typeHinges;
  String get mesh => _mesh;
  String get harbor => _harbor;
  String get swing => _swing;
  String get id => _id;

  IronGates.fromSnapShot(DataSnapshot snapshot) {
    _id = snapshot.key;
    _t = snapshot.value['tipo'];
    _style = snapshot.value['style'];
    _typeLocks = snapshot.value['typeLocks'];
    _typeHinges = snapshot.value['typeHinges'];
    _mesh = snapshot.value['mesh'];
    _harbor = snapshot.value['harbor'];
    _swing = snapshot.value['swing'];
  }
}
