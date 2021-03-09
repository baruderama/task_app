import 'package:firebase_database/firebase_database.dart';

class MontageFence {
  String _id;
  String _t;
  String _style;
  String _heigth;
  String _spearsDesigns;
  String _postSize;
  String _topFinish;

  MontageFence(this._id, this._t, this._style, this._heigth,
      this._spearsDesigns, this._postSize, this._topFinish);

  MontageFence.map(dynamic obj) {
    this._t = obj['tipo'];
    this._heigth = obj['heigth'];
    this._spearsDesigns = obj['spearsDesigns'];
    this._postSize = obj['postSize'];
    this._style = obj['style'];
    this._topFinish = obj['topFinish'];
  }

  String get id => _id;
  String get t => _t;
  String get heigth => _heigth;
  String get spearsDesigns => _spearsDesigns;
  String get postSize => _postSize;
  String get style => _style;
  String get topFinish => _topFinish;

  MontageFence.fromSnapShot(DataSnapshot snapshot) {
    _id = snapshot.key;
    _t = snapshot.value['tipo'];
    _heigth = snapshot.value['heigth'];
    _spearsDesigns = snapshot.value['spearsDesigns'];
    _postSize = snapshot.value['postSize'];
    _style = snapshot.value['style'];
    _topFinish = snapshot.value['topFinish'];
  }
}
