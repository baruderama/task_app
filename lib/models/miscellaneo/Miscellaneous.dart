import 'package:firebase_database/firebase_database.dart';

class Miscellaneous {
  String _id;
  String _bumperPost;
  String _guardRail;
  String _windowGuard;
  String _scissorGate;
  String _t;
  //String _topFinish;

  Miscellaneous(this._id, this._bumperPost, this._guardRail, this._windowGuard,
      this._scissorGate, this._t);

  Miscellaneous.map(dynamic obj) {
    this._bumperPost = obj['bumper_post'];
    this._guardRail = obj['guard_rail'];
    this._windowGuard = obj['window_guard'];
    this._scissorGate = obj['scissor_gate'];
    this._t = obj['tipo'];
  }

  String get id => _id;
  String get bumperPost => _bumperPost;
  String get guardRail => _guardRail;
  String get windowGuard => _windowGuard;
  String get scissorGate => _scissorGate;
  String get t => _t;

  Miscellaneous.fromSnapShot(DataSnapshot snapshot) {
    _id = snapshot.key;
    _bumperPost = snapshot.value['bumper_post'];
    _guardRail = snapshot.value['guard_rail'];
    _windowGuard = snapshot.value['window_guard'];
    _scissorGate = snapshot.value['scissor_gate'];
    _t = snapshot.value['tipo'];
  }
}
