import 'package:firebase_database/firebase_database.dart';

class WoodTyG {
  String _ironWood;
  String _verticalHorizontal;
  //String _topFinish;

  WoodTyG(this._ironWood, this._verticalHorizontal);

  WoodTyG.map(dynamic obj) {
    this._ironWood = obj['ironWood'];
    this._verticalHorizontal = obj['vertical_horizontal'];
  }

  String get ironWood => _ironWood;
  String get verticalHorizontal => _verticalHorizontal;

  WoodTyG.fromSnapShot(DataSnapshot snapshot) {
    _ironWood = snapshot.value['ironWood'];
    _verticalHorizontal = snapshot.value['vertical_horizontal'];
  }
}
