import 'package:firebase_database/firebase_database.dart';

class Cameras {
  String _id;
  String _lp;
  String _4k;
  String _hd;
  String _dvr;
  String _hdSize;
  String _numberCameras;
  String _sizeTv;
  //String _topFinish;

  Cameras(this._id, this._lp, this._4k, this._hd, this._dvr, this._hdSize,
      this._numberCameras, this._sizeTv);

  Cameras.map(dynamic obj) {
    this._lp = obj['lp'];
    this._4k = obj['4k'];
    this._hd = obj['hd'];
    this._dvr = obj['dvr'];
    this._hdSize = obj['hdSize'];
    this._numberCameras = obj['number_cameras'];
    this._sizeTv = obj['size_tv'];
  }

  String get id => _id;
  String get lp => _lp;
  String get cuatrok => _4k;
  String get hd => _hd;
  String get dvr => _dvr;
  String get hdSize => _hdSize;
  String get numberCameras => _numberCameras;
  String get sizeTv => _sizeTv;

  Cameras.fromSnapShot(DataSnapshot snapshot) {
    _id = snapshot.key;
    _lp = snapshot.value['lp'];
    _4k = snapshot.value['4k'];
    _hd = snapshot.value['hd'];
    _dvr = snapshot.value['dvr'];
    _hdSize = snapshot.value['hdSize'];
    _numberCameras = snapshot.value['number_cameras'];
    _sizeTv = snapshot.value['size_tv'];
  }
}
