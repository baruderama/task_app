import 'package:firebase_database/firebase_database.dart';
import 'package:task_app/models/Iron.dart';

class Task {
  String _id;
  List<Iron> _iron;

  Task(this._id, this._iron);

  Task.map(dynamic obj) {
    this._iron = obj['iron'];
  }

  String get id => _id;
  List<Iron> get iron => _iron;

  Task.fromSnapShot(DataSnapshot snapshot) {
    _id = snapshot.key;
    _iron = snapshot.value['iron'];
  }
}
