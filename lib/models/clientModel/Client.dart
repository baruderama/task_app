import 'package:firebase_database/firebase_database.dart';

class Client {
  String _id;
  String _conditions;
  String _status;
  String _name;

  Client(this._id, this._status, this._conditions, this._name);

  Client.map(dynamic obj) {
    this._status = obj['status'];
    this._conditions = obj['Terms&Conditions'];
    this._name = obj['name'];
  }

  String get id => _id;
  String get status => _status;
  String get conditions => _conditions;
  String get name => _name;

  Client.fromSnapShot(DataSnapshot snapshot) {
    _id = snapshot.key;
    _status = snapshot.value['status'];
    _conditions = snapshot.value['Terms&Conditions'];
    _name = snapshot.value['name'];
  }
}
