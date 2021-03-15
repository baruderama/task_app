import 'package:faker/faker.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_app/controller/services/clientCrud/clientCrud.dart';
import 'package:task_app/controller/services/clientTaskCrud/clientTaskCrud.dart';
import 'package:task_app/models/Iron.dart';
import 'package:task_app/models/Iron/IronFence.dart';
import 'package:task_app/models/chainLink/ChainLinkFence.dart';
import 'package:task_app/models/clientModel/Client.dart';
import 'package:task_app/models/clientTask/ClientTask.dart';
import 'package:task_app/models/montage/MontageFence.dart';
import 'package:task_app/models/railing/RailingFence.dart';
import 'package:task_app/models/vinyl/VinylFence.dart';
import 'package:task_app/models/wood/WoodFence.dart';
import 'package:task_app/models/wood/WoodT&G.dart';
import 'package:task_app/views/bossScreen/listClientsScreen.dart';
import 'package:task_app/views/calendar/calendar.dart';

class ListInfoClient extends StatefulWidget {
  @override
  _ShopScreen createState() => _ShopScreen();
}

int cont = 0;
//List<Client> productList = List<Client>();
TextEditingController _nameFieldController = TextEditingController();
TextEditingController _desControllerField = TextEditingController();
TextEditingController _stockControllerField = TextEditingController();
FirebaseDatabase db = new FirebaseDatabase();
DatabaseReference taskReferenceFence =
    db.reference().child('task').child('Fence');
var hey = "-MTHzJq-C2SkBvR-sY3V";
//List<String> listTask = List<String>();
//String lastkey;

class _ShopScreen extends State<ListInfoClient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: new FirebaseAnimatedList(
        key: new ValueKey<bool>(false),
        query: taskReferenceFence,
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
    var client = MontageFence.fromSnapShot(res);
    var item;
    bool confirm = false;
    for (var i in listTask) {
      if (i == client.id) {
        confirm = true;
      }
    }

    if (confirm) {
      if (client.t == 'iron') {
        IronFence clientiron = IronFence.fromSnapShot(res);
        item = new Card(
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
                              "- " + clientiron.t,
                              // set some style to text
                              style: new TextStyle(
                                  fontSize: 30.0, color: Colors.blue),
                            ),
                            new Text(
                              "- " + clientiron.postSize,
                              // set some style to text
                              style: new TextStyle(
                                  fontSize: 30.0, color: Colors.blue),
                            ),
                            new Text(
                              "- " + clientiron.paint,
                              // set some style to text
                              style: new TextStyle(
                                  fontSize: 30.0, color: Colors.blue),
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
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  Future.delayed(Duration(seconds: 1), () {
                                    Navigator.of(context).pop(true);
                                  });
                                  return AlertDialog(
                                    title: Text("ha sido añadido al carrito"),
                                  );
                                });

                            productReference
                                .once()
                                .then((DataSnapshot snapshot) {
                              Map<dynamic, dynamic> values = snapshot.value;

                              values.forEach((key, values) {
                                if (values["idClient"] == client.id) {
                                  //listTask.add(values["idTask"]);
                                  //debugPrint(key);
                                  //lastkey = key;
                                }
                              });
                            });

                            setState(() {
                              //productList.add(client);
                            });
                          },
                        ),
                        new IconButton(
                          iconSize: 30,
                          icon: const Icon(
                            Icons.calendar_today,
                            color: const Color(0xFF167F67),
                          ),
                          onPressed: () async {
                            // ProductCrud().deleteProduct(product);

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
      }

      if (client.t == 'chain_link') {
        ChainLinkFence clientChain = ChainLinkFence.fromSnapShot(res);
        item = new Card(
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
                              "task with code: " + clientChain.color,
                              // set some style to text
                              style: new TextStyle(
                                  fontSize: 30.0, color: Colors.blue),
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
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  Future.delayed(Duration(seconds: 1), () {
                                    Navigator.of(context).pop(true);
                                  });
                                  return AlertDialog(
                                    title: Text("ha sido añadido al carrito"),
                                  );
                                });

                            productReference
                                .once()
                                .then((DataSnapshot snapshot) {
                              Map<dynamic, dynamic> values = snapshot.value;

                              values.forEach((key, values) {
                                if (values["idClient"] == client.id) {
                                  //listTask.add(values["idTask"]);
                                  //debugPrint(key);
                                  //lastkey = key;
                                }
                              });
                            });

                            setState(() {
                              //productList.add(client);
                            });
                          },
                        ),
                        new IconButton(
                          iconSize: 30,
                          icon: const Icon(
                            Icons.delete_forever,
                            color: const Color(0xFF167F67),
                          ),
                          onPressed: () async {
                            // ProductCrud().deleteProduct(product);

                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  Future.delayed(Duration(seconds: 1), () {
                                    Navigator.of(context).pop(true);
                                  });
                                  return AlertDialog(
                                    title: Text("ha sido eliminado"),
                                  );
                                });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0)),
        );
      }
      if (client.t == 'montage') {
        MontageFence clientMontage = MontageFence.fromSnapShot(res);
        item = new Card(
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
                              "task with code: " + clientMontage.style,
                              // set some style to text
                              style: new TextStyle(
                                  fontSize: 30.0, color: Colors.blue),
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
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  Future.delayed(Duration(seconds: 1), () {
                                    Navigator.of(context).pop(true);
                                  });
                                  return AlertDialog(
                                    title: Text("ha sido añadido al carrito"),
                                  );
                                });

                            productReference
                                .once()
                                .then((DataSnapshot snapshot) {
                              Map<dynamic, dynamic> values = snapshot.value;

                              values.forEach((key, values) {
                                if (values["idClient"] == client.id) {
                                  //listTask.add(values["idTask"]);
                                  //debugPrint(key);
                                  //lastkey = key;
                                }
                              });
                            });

                            setState(() {
                              //productList.add(client);
                            });
                          },
                        ),
                        new IconButton(
                          iconSize: 30,
                          icon: const Icon(
                            Icons.delete_forever,
                            color: const Color(0xFF167F67),
                          ),
                          onPressed: () async {
                            // ProductCrud().deleteProduct(product);

                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  Future.delayed(Duration(seconds: 1), () {
                                    Navigator.of(context).pop(true);
                                  });
                                  return AlertDialog(
                                    title: Text("ha sido eliminado"),
                                  );
                                });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0)),
        );
      }
      if (client.t == 'railing') {
        RailingFence clientRailing = RailingFence.fromSnapShot(res);
        item = new Card(
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
                              "task with code: " + clientRailing.color,
                              // set some style to text
                              style: new TextStyle(
                                  fontSize: 30.0, color: Colors.blue),
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
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  Future.delayed(Duration(seconds: 1), () {
                                    Navigator.of(context).pop(true);
                                  });
                                  return AlertDialog(
                                    title: Text("ha sido añadido al carrito"),
                                  );
                                });

                            productReference
                                .once()
                                .then((DataSnapshot snapshot) {
                              Map<dynamic, dynamic> values = snapshot.value;

                              values.forEach((key, values) {
                                if (values["idClient"] == client.id) {
                                  //listTask.add(values["idTask"]);
                                  //debugPrint(key);
                                  //lastkey = key;
                                }
                              });
                            });

                            setState(() {
                              //productList.add(client);
                            });
                          },
                        ),
                        new IconButton(
                          iconSize: 30,
                          icon: const Icon(
                            Icons.delete_forever,
                            color: const Color(0xFF167F67),
                          ),
                          onPressed: () async {
                            // ProductCrud().deleteProduct(product);

                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  Future.delayed(Duration(seconds: 1), () {
                                    Navigator.of(context).pop(true);
                                  });
                                  return AlertDialog(
                                    title: Text("ha sido eliminado"),
                                  );
                                });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0)),
        );
      }
      if (client.t == 'vinyl') {
        VinylFence clientVinyl = VinylFence.fromSnapShot(res);
        item = new Card(
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
                              "task with code: " + clientVinyl.color,
                              // set some style to text
                              style: new TextStyle(
                                  fontSize: 30.0, color: Colors.blue),
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
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  Future.delayed(Duration(seconds: 1), () {
                                    Navigator.of(context).pop(true);
                                  });
                                  return AlertDialog(
                                    title: Text("ha sido añadido al carrito"),
                                  );
                                });

                            productReference
                                .once()
                                .then((DataSnapshot snapshot) {
                              Map<dynamic, dynamic> values = snapshot.value;

                              values.forEach((key, values) {
                                if (values["idClient"] == client.id) {
                                  //listTask.add(values["idTask"]);
                                  //debugPrint(key);
                                  //lastkey = key;
                                }
                              });
                            });

                            setState(() {
                              //productList.add(client);
                            });
                          },
                        ),
                        new IconButton(
                          iconSize: 30,
                          icon: const Icon(
                            Icons.delete_forever,
                            color: const Color(0xFF167F67),
                          ),
                          onPressed: () async {
                            // ProductCrud().deleteProduct(product);

                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  Future.delayed(Duration(seconds: 1), () {
                                    Navigator.of(context).pop(true);
                                  });
                                  return AlertDialog(
                                    title: Text("ha sido eliminado"),
                                  );
                                });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0)),
        );
      }
      if (client.t == 'tyg') {
        WoodTyG clientTyg = WoodTyG.fromSnapShot(res);
        item = new Card(
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
                              "task with code: " + clientTyg.ironWood,
                              // set some style to text
                              style: new TextStyle(
                                  fontSize: 30.0, color: Colors.blue),
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
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  Future.delayed(Duration(seconds: 1), () {
                                    Navigator.of(context).pop(true);
                                  });
                                  return AlertDialog(
                                    title: Text("ha sido añadido al carrito"),
                                  );
                                });

                            productReference
                                .once()
                                .then((DataSnapshot snapshot) {
                              Map<dynamic, dynamic> values = snapshot.value;

                              values.forEach((key, values) {
                                if (values["idClient"] == client.id) {
                                  //listTask.add(values["idTask"]);
                                  //debugPrint(key);
                                  //lastkey = key;
                                }
                              });
                            });

                            setState(() {
                              //productList.add(client);
                            });
                          },
                        ),
                        new IconButton(
                          iconSize: 30,
                          icon: const Icon(
                            Icons.delete_forever,
                            color: const Color(0xFF167F67),
                          ),
                          onPressed: () async {
                            // ProductCrud().deleteProduct(product);

                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  Future.delayed(Duration(seconds: 1), () {
                                    Navigator.of(context).pop(true);
                                  });
                                  return AlertDialog(
                                    title: Text("ha sido eliminado"),
                                  );
                                });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0)),
        );
      }
      if (client.t == 'wood') {
        WoodFence clientWood = WoodFence.fromSnapShot(res);
        item = new Card(
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
                              "task with code: " + clientWood.postSize,
                              // set some style to text
                              style: new TextStyle(
                                  fontSize: 30.0, color: Colors.blue),
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
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  Future.delayed(Duration(seconds: 1), () {
                                    Navigator.of(context).pop(true);
                                  });
                                  return AlertDialog(
                                    title: Text("ha sido añadido al carrito"),
                                  );
                                });

                            productReference
                                .once()
                                .then((DataSnapshot snapshot) {
                              Map<dynamic, dynamic> values = snapshot.value;

                              values.forEach((key, values) {
                                if (values["idClient"] == client.id) {
                                  //listTask.add(values["idTask"]);
                                  //debugPrint(key);
                                  //lastkey = key;
                                }
                              });
                            });

                            setState(() {
                              //productList.add(client);
                            });
                          },
                        ),
                        new IconButton(
                          iconSize: 30,
                          icon: const Icon(
                            Icons.delete_forever,
                            color: const Color(0xFF167F67),
                          ),
                          onPressed: () async {
                            // ProductCrud().deleteProduct(product);

                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  Future.delayed(Duration(seconds: 1), () {
                                    Navigator.of(context).pop(true);
                                  });
                                  return AlertDialog(
                                    title: Text("ha sido eliminado"),
                                  );
                                });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0)),
        );
      }
    }

    return item;
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text('Task'),
      backgroundColor: Colors.teal[100],
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg", color: Colors.white),
        onPressed: () async {
          listTask = List<String>();
          Navigator.pop(context);
        },
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
