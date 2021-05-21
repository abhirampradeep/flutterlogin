import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          alignment: Alignment.center,
          margin: const EdgeInsets.all(15),
          width: MediaQuery.of(context).size.width,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(2.0, 5.0),
                )
              ],
              gradient: LinearGradient(colors: [Colors.yellow, Colors.pink])),
          child: Text(
            "hello abhiram",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 10,
            ),
          ),
        ),
      ),
    );
  }
}
