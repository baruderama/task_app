import 'package:firebase_database/firebase_database.dart';

class Client {
  String _id;
  String _conditions;
  String _status;

  Client(this._id, this._status, this._conditions);

  Client.map(dynamic obj) {
    this._status = obj['status'];
    this._conditions = obj['Terms&Conditions'];
  }

  String get id => _id;
  String get status => _status;
  String get conditions => _conditions;

  Client.fromSnapShot(DataSnapshot snapshot) {
    _id = snapshot.key;
    _status = snapshot.value['status'];
    _conditions = snapshot.value['Terms&Conditions'];
  }
}
