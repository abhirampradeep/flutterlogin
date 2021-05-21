import 'dart:html';

import 'package:flutter/material.dart';
import 'package:sample/abhi.dart';

class drawer extends StatefulWidget {
  @override
  _drawerState createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  Widget _buildContainer() {
    return Scaffold();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                "Abhiram K pradeep",
                style: TextStyle(color: Colors.white),
              ),
              accountEmail: Text(
                "abhiram123@gmail.com",
                style: TextStyle(color: Colors.white),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/Icon-192.png'),
              ),
            ),
            ListTile(
              leading: Text('comeon'),
              title: Text(
                'Log Out',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
              trailing: Icon(
                Icons.logout,
                color: Colors.black,
              ),
              dense: true,
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => abhi()));
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                'Abhi',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Text(
                'oombesh kumar',
                textAlign: TextAlign.center,
              ),
              trailing: Icon(
                Icons.logout,
                color: Colors.black,
              ),
              dense: true,
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => abhi()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
