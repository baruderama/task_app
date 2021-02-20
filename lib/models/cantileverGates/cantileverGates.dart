import 'package:firebase_database/firebase_database.dart';

class CantileverGates {
  String _style;
  String _typeLocks;
  String _motor;
  String _sizePost;
  //String _topFinish;

  CantileverGates(this._style, this._typeLocks, this._motor, this._sizePost);

  CantileverGates.map(dynamic obj) {
    this._style = obj['style'];
    this._typeLocks = obj['typeLocks'];
    this._motor = obj['motor'];
    this._sizePost = obj['size_post'];
  }

  String get style => _style;
  String get typeLocks => _typeLocks;
  String get motor => _motor;
  String get sizePost => _sizePost;

  CantileverGates.fromSnapShot(DataSnapshot snapshot) {
    _style = snapshot.value['style'];
    _typeLocks = snapshot.value['typeLocks'];
    _motor = snapshot.value['motor'];
    _sizePost = snapshot.value['size_post'];
  }
}
