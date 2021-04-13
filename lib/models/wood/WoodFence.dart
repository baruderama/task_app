import 'package:firebase_database/firebase_database.dart';

class WoodFence {
  String _id;
  String _t;
  String _tapeFence;
  String _heigth;
  String _postSize;
  String _topFinish;
  String _composive;

  WoodFence(this._id, this._t, this._tapeFence, this._heigth, this._postSize,
      this._topFinish, this._composive);

  WoodFence.map(dynamic obj) {
    this._t = obj['tipo'];
    this._heigth = obj['heigth'];
    this._postSize = obj['postSize'];
    this._tapeFence = obj['tapeFence'];
    this._topFinish = obj['topFinish'];
    this._composive = obj['composive'];
  }

  String get id => _id;
  String get t => _t;
  String get heigth => _heigth;
  String get postSize => _postSize;
  String get tapeFence => _tapeFence;
  String get topFinish => _topFinish;
  String get composive => _composive;

  WoodFence.fromSnapShot(DataSnapshot snapshot) {
    _id = snapshot.key;
    _t = snapshot.value['tipo'];
    _heigth = snapshot.value['heigth'];
    _postSize = snapshot.value['postSize'];
    _tapeFence = snapshot.value['tapeFence'];
    _topFinish = snapshot.value['topFinish'];
    _composive = snapshot.value['composive'];
  }
}
