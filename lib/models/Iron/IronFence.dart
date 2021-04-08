import 'package:firebase_database/firebase_database.dart';

class IronFence {
  String _id;
  String _t;
  String _heigth;
  String _spearsDesigns;
  String _pickets;
  String _channels;
  String _postSize;
  String _paint;
  String _topFinish;
  String _mailBox;
  String _postCaps;
  String _tube;

  IronFence(
      this._id,
      this._t,
      this._heigth,
      this._spearsDesigns,
      this._pickets,
      this._channels,
      this._postSize,
      this._paint,
      this._topFinish,
      this._mailBox,
      this._postCaps,
      this._tube);

  IronFence.map(dynamic obj) {
    this._t = obj['tipo'];
    this._heigth = obj['heigth'];
    this._spearsDesigns = obj['spearsDesigns'];
    this._pickets = obj['pickets'];
    this._channels = obj['channels'];
    this._postSize = obj['postSize'];
    this._paint = obj['paint'];
    this._topFinish = obj['topFinish'];
    this._mailBox = obj['mailBox'];
    this._postCaps = obj['postCaps'];
    this._tube = obj['tube'];
  }
  String get t => _t;
  String get heigth => _heigth;
  String get spearsDesigns => _spearsDesigns;
  String get pickets => _pickets;
  String get channels => _channels;
  String get postSize => _postSize;
  String get paint => _paint;
  String get topFinish => _topFinish;
  String get id => _id;
  String get mailBox => _mailBox;
  String get postCaps => _postCaps;
  String get tube => _tube;

  IronFence.fromSnapShot(DataSnapshot snapshot) {
    _id = snapshot.key;
    _t = snapshot.value['tipo'];
    _heigth = snapshot.value['heigth'];
    _spearsDesigns = snapshot.value['spearsDesigns'];
    _pickets = snapshot.value['pickets'];
    _channels = snapshot.value['channels'];
    _postSize = snapshot.value['postSize'];
    _paint = snapshot.value['paint'];
    _topFinish = snapshot.value['topFinish'];
    _mailBox = snapshot.value['mailBox'];
    _postCaps = snapshot.value['postCaps'];
    _tube = snapshot.value['tube'];
  }
}
