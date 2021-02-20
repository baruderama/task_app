import 'package:firebase_database/firebase_database.dart';

class Miscellaneous {
  String _bumperPost;
  String _guardRail;
  String _windowGuard;
  String _scissorGate;
  //String _topFinish;

  Miscellaneous(
      this._bumperPost, this._guardRail, this._windowGuard, this._scissorGate);

  Miscellaneous.map(dynamic obj) {
    this._bumperPost = obj['bumper_post'];
    this._guardRail = obj['guard_rail'];
    this._windowGuard = obj['window_guard'];
    this._scissorGate = obj['scissor_gate'];
  }

  String get bumperPost => _bumperPost;
  String get guardRail => _guardRail;
  String get windowGuard => _windowGuard;
  String get scissorGate => _scissorGate;

  Miscellaneous.fromSnapShot(DataSnapshot snapshot) {
    _bumperPost = snapshot.value['style'];
    _guardRail = snapshot.value['typeLocks'];
    _windowGuard = snapshot.value['typeHinges'];
    _scissorGate = snapshot.value['mesh'];
  }
}
