import 'dart:async';

import 'package:flutter/material.dart';

import 'package:sample/work.dart';

import 'abhi.dart';

import 'back.dart';
import 'login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: splashscreen(),
    );
  }
}

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 6),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => abhi())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 100,
          padding: const EdgeInsets.all(30),
          margin: const EdgeInsets.all(50),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  color: Colors.lightBlueAccent,
                  width: 4,
                  style: BorderStyle.solid),
              image: DecorationImage(
                  image: AssetImage(
                'assets/Icon-192.png',
              ))),
        ),
      ),
    );
  }
}
