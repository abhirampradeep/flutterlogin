import 'package:flutter/material.dart';
import 'package:sample/profile.dart';

class abhi extends StatefulWidget {
  @override
  _abhiState createState() => _abhiState();
}

class _abhiState extends State<abhi> {
  TextEditingController userNamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            //Container(
            // height: MediaQuery.of(context).size.height * 0.3,
            // width: MediaQuery.of(context).size.width,
            // child: Container(
            //  decoration: BoxDecoration(
            //      color: Colors.blue,
            //     borderRadius: BorderRadius.only(
            //       bottomLeft: const Radius.circular(40),
            //      bottomRight: const Radius.circular(40),
            //    )),
            // ),
            //  ),
            Container(
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
            Container(
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.all(20),
                      child: Text("Login",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 30,
                          )),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: TextField(
                        controller: userNamecontroller,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(5),
                            isDense: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            prefixIcon: Icon(Icons.person),
                            labelText: 'Username',
                            hintText: 'Enter the username'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: TextField(
                        controller: passwordcontroller,
                        obscureText: true,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(5),
                            isDense: true,
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: Icon(Icons.remove_red_eye_rounded),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            labelText: 'Password',
                            hintText: 'Enter the password'),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(15),
                      margin: const EdgeInsets.only(bottom: 10),
                      child: ElevatedButton(
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => profile()),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.all(10),
              // ignore: deprecated_member_use
              child: FlatButton(
                child: Text('Already have an account? signIn',
                    style: TextStyle(color: Colors.white)),
                onPressed: () {
                  print(userNamecontroller.text);
                },
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: CircularProgressIndicator(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
