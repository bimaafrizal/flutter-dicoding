import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text(
          'Hi',
          style: TextStyle(fontSize: 40),
        ),
        color: Colors.blue,
        width: 200,
        height: 100,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
