import 'package:firebase_database/firebase_database.dart';

class ClientTask {
  String _id;
  String _idTask;
  String _idClient;

  String _date;

  ClientTask(this._id, this._idTask, this._idClient, this._date);

  ClientTask.map(dynamic obj) {
    this._idTask = obj['idTask'];
    this._idClient = obj['idClient'];

    this._date = obj['date'];
  }

  String get id => _id;
  String get idTask => _idTask;
  String get idClient => _idClient;

  String get date => _date;

  ClientTask.fromSnapShot(DataSnapshot snapshot) {
    _id = snapshot.key;
    _idTask = snapshot.value['idTask'];
    _idClient = snapshot.value['idClient'];
    _date = snapshot.value['date'];
  }
}
