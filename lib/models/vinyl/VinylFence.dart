import 'package:firebase_database/firebase_database.dart';

class VinylFence {
  String _style;
  String _heigth;
  String _color;
  String _postCaps;
  String _topFinish;

  VinylFence(
      this._style, this._heigth, this._color, this._postCaps, this._topFinish);

  VinylFence.map(dynamic obj) {
    this._heigth = obj['heigth'];
    this._color = obj['color'];
    this._postCaps = obj['postCaps'];
    this._style = obj['style'];
    this._topFinish = obj['topFinish'];
  }

  String get heigth => _heigth;
  String get color => _color;
  String get postCaps => _postCaps;
  String get style => _style;
  String get topFinish => _topFinish;

  VinylFence.fromSnapShot(DataSnapshot snapshot) {
    _heigth = snapshot.value['heigth'];
    _color = snapshot.value['color'];
    _postCaps = snapshot.value['postCaps'];
    _style = snapshot.value['style'];
    _topFinish = snapshot.value['topFinish'];
  }
}
