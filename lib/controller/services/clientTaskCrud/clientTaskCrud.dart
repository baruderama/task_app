import 'dart:async';

import 'package:firebase_database/firebase_database.dart';
import 'package:task_app/models/clientModel/Client.dart';
import 'package:task_app/models/clientTask/ClientTask.dart';

FirebaseDatabase db = new FirebaseDatabase();
DatabaseReference productReference = db.reference().child('clientTask');

class ClientTaskCrud {
  void addClientTask(ClientTask clientTask) async {
    productReference.push().set(<String, String>{
      "idClient": "" + clientTask.idClient,
      "idTask": "" + clientTask.idTask,
      "date": "" + clientTask.date,
    }).then((_) {
      print('Transaction  committed.');
    });
    //var fenceKey = productReference.push();

    //fenceKey.set(clientTask);
  }

  void deleteClientTask(ClientTask clientTask) async {
    await productReference.child(clientTask.id).remove().then((_) {
      print('Transaction  committed.');
    });
  }

  void updateClientTask(ClientTask clientTask) async {
    //int valor = int.parse(product.stock) - resta;
    await productReference.child(clientTask.id).update({
      "idClient": "" + clientTask.idClient,
      "idTask": "" + clientTask.idTask,
      "date": "" + clientTask.date,
    }).then((_) {
      print('Transaction  committed.');
    });
  }
}
