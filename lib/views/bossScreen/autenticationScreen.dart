import 'package:flutter/material.dart';
import 'package:task_app/views/bossScreen/listClientsScreen.dart';
import 'package:task_app/views/bossScreen/listInfoClient.dart';

class AutenticationScreen extends StatefulWidget {
  @override
  __FormInputFieldLogin createState() => __FormInputFieldLogin();
}

TextEditingController password = new TextEditingController();

class __FormInputFieldLogin extends State<AutenticationScreen> {
  bool _obscurePassword = true;
  String _password;
  String _correo;

  void _toggle() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  String prueba = "prueba";
  String code = "AztecaApp";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 300,
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey[200]))),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 10,
                  child: TextFormField(
                    controller: password,
                    decoration: const InputDecoration(
                      hintText: "Authentication Code",
                    ),
                    obscureText: _obscurePassword,
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: _toggle,
                    child: new Icon(_obscurePassword
                        ? Icons.remove_red_eye_sharp
                        : Icons.remove_red_eye_outlined),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0)),
              //   side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))),
              onPressed: () {
                if (code == password.text) {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => ListClientsScreen()));
                  // builder: (context) => ListClientsScreen()));
                }
                // RoutesGeneral().toRegister(context);
              },
              padding: EdgeInsets.symmetric(horizontal: 50),
              color: Colors.blue[700],
              textColor: Colors.white,
              // child: Image.asset(
              //  "assets/images/cerebroAzul.png",
              // height: size.height * 0.25,
              //  ),
              child: Text("Confirm", style: TextStyle(fontSize: 15)),
            ),
          ),
        ],
      ),
    );
  }
}
