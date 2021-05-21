import 'package:flutter/material.dart';

class back extends StatefulWidget {
  @override
  _backState createState() => _backState();
}

class _backState extends State<back> {
  Widget _backcontainer() {
    return Card(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Text(
            'my is khan',
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: const Radius.circular(60),
                  bottomRight: const Radius.circular(60),
                )),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _backcontainer(),
          ],
        )
      ],
    )));
  }
}
