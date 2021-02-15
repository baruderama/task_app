import 'package:firebase_database/firebase_database.dart';

class WoodFence {
  String _tapeFence;
  String _heigth;
  String _postSize;
  String _topFinish;

  WoodFence(this._tapeFence, this._heigth, this._postSize, this._topFinish);

  WoodFence.map(dynamic obj) {
    this._heigth = obj['heigth'];
    this._postSize = obj['postSize'];
    this._tapeFence = obj['tapeFence'];
    this._topFinish = obj['topFinish'];
  }

  String get heigth => _heigth;
  String get postSize => _postSize;
  String get tapeFence => _tapeFence;
  String get topFinish => _topFinish;

  WoodFence.fromSnapShot(DataSnapshot snapshot) {
    _heigth = snapshot.value['heigth'];
    _postSize = snapshot.value['postSize'];
    _tapeFence = snapshot.value['style'];
    _topFinish = snapshot.value['topFinish'];
  }
}
