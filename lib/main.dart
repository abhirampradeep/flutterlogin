import 'package:flutter/material.dart';
import 'package:sample/sidebarcardview.dart';

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
      home: abhi(),
    );
  }
}
