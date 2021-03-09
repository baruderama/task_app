import 'package:firebase_database/firebase_database.dart';

class RailingFence {
  String _id;
  String _t;
  String _style;
  String _sizePickets;
  String _heigth;
  String _color;

  RailingFence(this._id, this._t, this._sizePickets, this._heigth, this._color,
      this._style);

  RailingFence.map(dynamic obj) {
    this._t = obj['tipo'];
    this._style = obj['style'];
    this._heigth = obj['heigth'];
    this._color = obj['color'];
    this._sizePickets = obj['size_pickets'];
  }

  String get id => _id;
  String get t => _t;
  String get style => _style;
  String get heigth => _heigth;
  String get color => _color;
  String get sizePIckets => _sizePickets;

  RailingFence.fromSnapShot(DataSnapshot snapshot) {
    _id = snapshot.key;
    _t = snapshot.value['tipo'];
    _style = snapshot.value['style'];
    _heigth = snapshot.value['heigth'];
    _color = snapshot.value['color'];
    _sizePickets = snapshot.value['size_pickets'];
  }
}
