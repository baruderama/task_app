import 'package:faker/faker.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_app/controller/services/clientCrud/clientCrud.dart';
import 'package:task_app/controller/services/clientTaskCrud/clientTaskCrud.dart';
import 'package:task_app/models/clientModel/Client.dart';
import 'package:task_app/models/clientTask/ClientTask.dart';
import 'package:task_app/views/bossScreen/listInfoClient.dart';
import 'package:task_app/views/calendar/calendar.dart';

class ListClientsScreen extends StatefulWidget {
  @override
  _ShopScreen createState() => _ShopScreen();
}

int cont = 0;
List<Client> productList = List<Client>();
TextEditingController _nameFieldController = TextEditingController();
TextEditingController _desControllerField = TextEditingController();
TextEditingController _stockControllerField = TextEditingController();
List<String> listTask = List<String>();
//String lastkey;

class _ShopScreen extends State<ListClientsScreen> {
  @override
  void initState() {
    super.initState();
    listTask = List<String>();
    //todos.add("Regular Colors");
    //todos.add("Power Coating");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: new FirebaseAnimatedList(
        key: new ValueKey<bool>(false),
        query: productReferenceClient,
        reverse: false,
        sort: false
            ? (DataSnapshot a, DataSnapshot b) => b.key.compareTo(a.key)
            : null,
        itemBuilder: (BuildContext context, DataSnapshot snapshot,
            Animation<double> animation, int index) {
          return new SizeTransition(
            sizeFactor: animation,
            child: showUser(snapshot),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget showUser(DataSnapshot res) {
    Client client = Client.fromSnapShot(res);

    var item = new Card(
      child: new Container(
          child: new Center(
            child: new Row(
              children: <Widget>[
                new CircleAvatar(
                  radius: 40.0,
                  child: Image.asset("assets/images/giftbox.png"),
                  backgroundColor: const Color(0xFF20283e),
                ),
                new Expanded(
                  child: new Padding(
                    padding: EdgeInsets.all(10.0),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text(
                          "Client: " + client.name,
                          // set some style to text
                          style:
                              new TextStyle(fontSize: 30.0, color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ),
                new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new IconButton(
                      iconSize: 30,
                      icon: const Icon(
                        Icons.remove_red_eye_outlined,
                        color: const Color(0xFF167F67),
                      ),
                      onPressed: () {
                        /*
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              Future.delayed(Duration(seconds: 1), () {
                                Navigator.of(context).pop(true);
                              });
                              return AlertDialog(
                                title: Text("ha sido añadido al carrito"),
                              );
                            });*/

                        productReference.once().then((DataSnapshot snapshot) {
                          Map<dynamic, dynamic> values = snapshot.value;

                          values.forEach((key, values) {
                            print('hey bro' + client.id);
                            print('hey bro2' + values["idClient"]);

                            if (values["idClient"] == client.id) {
                              listTask.add(values["idTask"]);
                              print(listTask);
                              //debugPrint(key);
                              //lastkey = key;
                            }
                          });
                        });

                        setState(() {
                          //productList.add(client);
                        });
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => ListInfoClient()));
                      },
                    ),
                    new IconButton(
                      iconSize: 30,
                      icon: const Icon(
                        Icons.calendar_today_rounded,
                        color: const Color(0xFF167F67),
                      ),
                      onPressed: () async {
                        // ProductCrud().deleteProduct(product);

                        productReference.once().then((DataSnapshot snapshot) {
                          Map<dynamic, dynamic> values = snapshot.value;

                          values.forEach((key, values) {
                            if (values["idClient"] == client.id) {
                              //print('hey bro2' + values["idClient"]);
                              print('hey bro2' + key);
                              currentClient = values["idClient"];
                              // print('hey bro' + key.toString());
                              //debugPrint(key);
                              //lastkey = key;
                            }
                          });
                        });

                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => CalendarScreen()));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0)),
    );

    return item;
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text('Client'),
      backgroundColor: Colors.teal[100],
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: () async {},
      ),
      actions: <Widget>[
        /*
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            // By default our  icon color is white
            color: Colors.amber[700],
          ),
          onPressed: () async {
            if (cont == 0) {
              cont = 1;
              cart = new Cart("", "pending");

              CartCrud().addCart(cart);

              cartReference.once().then((DataSnapshot snapshot) {
                Map<dynamic, dynamic> values = snapshot.value;

                values.forEach((key, values) {
                  if (values["status"] == 'pending') {
                    debugPrint(key);
                    lastkey = key;
                  }
                });
              });

              cart = new Cart(lastkey, "pending");
            }
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => ProductInfo()));
          },
        ),
        */
        SizedBox(width: 20.0 / 2)
      ],
    );
  }
}
