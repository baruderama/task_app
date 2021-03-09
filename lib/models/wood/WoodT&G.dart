import 'package:firebase_database/firebase_database.dart';

class WoodTyG {
  String _id;
  String _t;
  String _ironWood;
  String _verticalHorizontal;
  //String _topFinish;

  WoodTyG(this._id, this._t, this._ironWood, this._verticalHorizontal);

  WoodTyG.map(dynamic obj) {
    this._t = obj['tipo'];
    this._ironWood = obj['ironWood'];
    this._verticalHorizontal = obj['vertical_horizontal'];
  }

  String get id => _id;
  String get t => _t;
  String get ironWood => _ironWood;
  String get verticalHorizontal => _verticalHorizontal;

  WoodTyG.fromSnapShot(DataSnapshot snapshot) {
    _id = snapshot.key;
    _t = snapshot.value['tipo'];
    _ironWood = snapshot.value['ironWood'];
    _verticalHorizontal = snapshot.value['vertical_horizontal'];
  }
}
