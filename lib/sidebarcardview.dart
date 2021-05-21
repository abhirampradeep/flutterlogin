import 'package:flutter/material.dart';
import 'package:sample/abhi.dart';

class intro extends StatefulWidget {
  @override
  _introState createState() => _introState();
}

class _introState extends State<intro> {
  TextEditingController usernamecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        backgroundColor: Colors.blue[600],
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(30),
                      child: Image(
                        image: AssetImage('assets/shower.png'),
                        width: 100,
                        height: 100,
                        alignment: Alignment.center,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.only(bottom: 20),
                      child: TextField(
                        controller: usernamecontroller,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            isDense: true,
                            suffix: Icon(Icons.person),
                            labelText: 'username',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            hintText: 'enter the username'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.only(bottom: 20),
                      child: TextField(
                        controller: usernamecontroller,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            isDense: true,
                            labelText: 'password',
                            suffixIcon: Icon(Icons.remove_red_eye_outlined),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            hintText: 'enter the password'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(bottom: 5),
                      child: ElevatedButton(
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => abhi()));
                        },
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      // ignore: deprecated_member_use
                      child: FlatButton(
                        child: Text(
                          'Already have an account? signIn',
                          style: TextStyle(color: Colors.blue),
                        ),
                        onPressed: () {
                          print(usernamecontroller.text);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
