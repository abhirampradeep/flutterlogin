import 'dart:ui';

import 'package:flutter/material.dart';

class work extends StatefulWidget {
  @override
  _workState createState() => _workState();
}

class _workState extends State<work> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("LuLu MaLL"),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person_rounded,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.backpack,
              color: Colors.white,
            ),
          ),
        ],
      ),
      drawer: Drawer(),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: <Widget>[
          Container(
            height: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.all(20),
                                margin: const EdgeInsets.only(right: 10),
                                child: Text(
                                  "Total Users",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(20),
                                child: Text(
                                  "16272",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.center,
                                      padding: const EdgeInsets.only(
                                          right: 30, top: 20, left: 20),
                                      child: Text(
                                        "Visited today",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 8),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      padding: const EdgeInsets.only(
                                          right: 20, left: 20, bottom: 8),
                                      child: Text(
                                        "100",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.center,
                                      padding: const EdgeInsets.only(
                                          left: 30, right: 20, top: 20),
                                      child: Text(
                                        "New users",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 8),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      padding: const EdgeInsets.only(
                                          right: 15, left: 20, bottom: 8),
                                      child: Text(
                                        "120",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(bottom: 10),
                          child: ElevatedButton(
                            child: Text(
                              'show classification',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(20),
                          alignment: Alignment.center,
                          color: Colors.blueAccent,
                          child: Row(
                            children: <Widget>[
                              Container(
                                alignment: Alignment.center,
                                child: Text('#'),
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding:
                                    const EdgeInsets.only(right: 20, top: 20),
                                child: Text(
                                  '249',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      padding: const EdgeInsets.only(
                                          top: 10, right: 10),
                                      child: Text(
                                        "SMS",
                                        style: TextStyle(fontSize: 8),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                          top: 10, right: 10),
                                      child: Text(
                                        "Email",
                                        style: TextStyle(fontSize: 8),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                          top: 10, right: 10),
                                      margin: const EdgeInsets.only(bottom: 10),
                                      child: Text(
                                        "Validity",
                                        style: TextStyle(fontSize: 8),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 10),
                                      child: Text(
                                        "20k",
                                        style: TextStyle(fontSize: 8),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 10),
                                      child: Text(
                                        "201",
                                        style: TextStyle(fontSize: 8),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 10),
                                      margin: const EdgeInsets.only(bottom: 10),
                                      child: Text(
                                        "18 days",
                                        style: TextStyle(fontSize: 8),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
