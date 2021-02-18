import 'package:firebase_database/firebase_database.dart';

class ChainLinkFence {
  String _typeFence;
  String _heigth;
  String _topFinish;
  String _color;
  String _terminalePost;
  String _linePost;
  String _topRails;
  String _privacy;
  String _security;

  ChainLinkFence(
      this._typeFence,
      this._heigth,
      this._color,
      this._terminalePost,
      this._topFinish,
      this._linePost,
      this._privacy,
      this._security,
      this._topRails);

  ChainLinkFence.map(dynamic obj) {
    this._heigth = obj['heigth'];
    this._color = obj['color'];
    this._linePost = obj['line_post'];
    this._typeFence = obj['type_fence'];
    this._topFinish = obj['topFinish'];
    this._privacy = obj['privacy'];
    this._security = obj['security'];
    this._terminalePost = obj['terminale_post'];
    this._topRails = obj['top_rails'];
  }

  String get heigth => _heigth;
  String get color => _color;
  String get linePost => _linePost;
  String get typeFence => _typeFence;
  String get topFinish => _topFinish;
  String get privacy => _privacy;
  String get security => _security;
  String get terminalePost => _terminalePost;
  String get topRails => _topRails;

  ChainLinkFence.fromSnapShot(DataSnapshot snapshot) {
    _heigth = snapshot.value['heigth'];
    _color = snapshot.value['color'];
    _linePost = snapshot.value['line_post'];
    _typeFence = snapshot.value['type_fence'];
    _topFinish = snapshot.value['topFinish'];
    _privacy = snapshot.value['privacy'];
    _security = snapshot.value['security'];
    _terminalePost = snapshot.value['terminale_post'];
    _topRails = snapshot.value['top_rails'];
  }
}
