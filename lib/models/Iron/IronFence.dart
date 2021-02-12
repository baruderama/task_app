import 'package:firebase_database/firebase_database.dart';

class IronFence {
  String _heigth;
  String _spearsDesigns;
  String _pickets;
  String _channels;
  String _postSize;
  String _paint;
  String _topFinish;

  IronFence(this._heigth, this._spearsDesigns, this._pickets, this._channels,
      this._postSize, this._paint, this._topFinish);

  IronFence.map(dynamic obj) {
    this._heigth = obj['heigth'];
    this._spearsDesigns = obj['spearsDesigns'];
    this._pickets = obj['pickets'];
    this._channels = obj['channels'];
    this._postSize = obj['postSize'];
    this._paint = obj['paint'];
    this._topFinish = obj['topFinish'];
  }

  String get heigth => _heigth;
  String get spearsDesigns => _spearsDesigns;
  String get pickets => _pickets;
  String get channels => _channels;
  String get postSize => _postSize;
  String get paint => _paint;
  String get topFinish => _topFinish;

  IronFence.fromSnapShot(DataSnapshot snapshot) {
    _heigth = snapshot.value['heigth'];
    _spearsDesigns = snapshot.value['spearsDesigns'];
    _pickets = snapshot.value['pickets'];
    _channels = snapshot.value['channels'];
    _postSize = snapshot.value['postSize'];
    _paint = snapshot.value['paint'];
    _topFinish = snapshot.value['topFinish'];
  }
}
