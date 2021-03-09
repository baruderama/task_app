import 'dart:async';

import 'package:firebase_database/firebase_database.dart';
import 'package:task_app/models/clientModel/Client.dart';

FirebaseDatabase db = new FirebaseDatabase();
DatabaseReference productReferenceClient = db.reference().child('client');

class ClientCrud {
  void addClient(Client client) async {
    productReferenceClient.push().set(<String, String>{
      "Terms&conditions": "" + client.conditions,
      "status": "" + "pending",
    }).then((_) {
      print('Transaction  committed.');
    });
  }

  void deleteClient(Client client) async {
    await productReferenceClient.child(client.id).remove().then((_) {
      print('Transaction  committed.');
    });
  }

  void updateClient(String clientKey) async {
    //int valor = int.parse(product.stock) - resta;
    await productReferenceClient.child(clientKey).update({
      "Terms&conditions": "Accepted",
      "status": "done",
    }).then((_) {
      print('Transaction  committed.');
    });
  }
}
