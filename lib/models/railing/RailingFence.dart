import 'package:firebase_database/firebase_database.dart';

class RailingFence {
  String _style;
  String _sizePickets;
  String _heigth;
  String _color;

  RailingFence(this._sizePickets, this._heigth, this._color, this._style);

  RailingFence.map(dynamic obj) {
    this._style = obj['style'];
    this._heigth = obj['heigth'];
    this._color = obj['color'];
    this._sizePickets = obj['size_pickets'];
  }

  String get style => _style;
  String get heigth => _heigth;
  String get color => _color;
  String get sizePIckets => _sizePickets;

  RailingFence.fromSnapShot(DataSnapshot snapshot) {
    _style = snapshot.value['style'];
    _heigth = snapshot.value['heigth'];
    _color = snapshot.value['color'];
    _sizePickets = snapshot.value['size_pickets'];
  }
}
