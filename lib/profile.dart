import 'package:flutter/material.dart';
import 'package:sample/abhi.dart';

class profile extends StatefulWidget {
  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "profile",
          style: TextStyle(fontSize: 10),
        ),
      ),
      body: Center(
        child: Text("hello"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("abhirampradeep"),
              accountEmail: Text("abhiram123@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/Icon-192.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
