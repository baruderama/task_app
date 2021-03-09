import 'package:firebase_database/firebase_database.dart';

class ClientTask {
  String _id;
  String _idClient;
  String _idTask;
  String _date;

  ClientTask(this._id, this._idClient, this._idTask, this._date);

  ClientTask.map(dynamic obj) {
    this._idClient = obj['idProduct'];
    this._idTask = obj['idCart'];
    this._date = obj['date'];
  }

  String get id => _id;
  String get idClient => _idClient;
  String get idTask => _idTask;
  String get date => _date;

  ClientTask.fromSnapShot(DataSnapshot snapshot) {
    _id = snapshot.key;
    _idClient = snapshot.value['idProduct'];
    _idTask = snapshot.value['idCart'];
    _date = snapshot.value['date'];
  }
}
