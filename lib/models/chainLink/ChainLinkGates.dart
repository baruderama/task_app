import 'package:firebase_database/firebase_database.dart';

class ChainLinkGates {
  String _singleDoble;
  String _typeLocks;
  String _typeHinges;
  String _sizePost;
  String _openingSwing;
  //String _topFinish;

  ChainLinkGates(this._singleDoble, this._typeLocks, this._typeHinges,
      this._sizePost, this._openingSwing);

  ChainLinkGates.map(dynamic obj) {
    this._singleDoble = obj['single_doble'];
    this._typeLocks = obj['typeLocks'];
    this._typeHinges = obj['typeHinges'];
    this._sizePost = obj['size_post'];
    this._openingSwing = obj['swingOpening'];
  }

  String get singleDoble => _singleDoble;
  String get typeLocks => _typeLocks;
  String get typeHinges => _typeHinges;
  String get sizePost => _sizePost;
  String get openingSwing => _openingSwing;

  ChainLinkGates.fromSnapShot(DataSnapshot snapshot) {
    _singleDoble = snapshot.value['single_doble'];
    _typeLocks = snapshot.value['typeLocks'];
    _typeHinges = snapshot.value['typeHinges'];
    _sizePost = snapshot.value['size_post'];
    _openingSwing = snapshot.value['opening_swing'];
  }
}
