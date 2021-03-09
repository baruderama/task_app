import 'package:firebase_database/firebase_database.dart';

class CantileverGates {
  String _id;
  String _t;
  String _style;
  String _typeLocks;
  String _motor;
  String _sizePost;
  //String _topFinish;

  CantileverGates(this._id, this._t, this._style, this._typeLocks, this._motor,
      this._sizePost);

  CantileverGates.map(dynamic obj) {
    this._t = obj['tipo'];
    this._style = obj['style'];
    this._typeLocks = obj['typeLocks'];
    this._motor = obj['motor'];
    this._sizePost = obj['size_post'];
  }

  String get id => _id;
  String get t => _t;
  String get style => _style;
  String get typeLocks => _typeLocks;
  String get motor => _motor;
  String get sizePost => _sizePost;

  CantileverGates.fromSnapShot(DataSnapshot snapshot) {
    _id = snapshot.key;
    _t = snapshot.value['tipo'];
    _style = snapshot.value['style'];
    _typeLocks = snapshot.value['typeLocks'];
    _motor = snapshot.value['motor'];
    _sizePost = snapshot.value['size_post'];
  }
}
