import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomFonts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Image'),
      ),
      body: Center(
        child: Text(
          "Custom Font",
          style: TextStyle(fontFamily: 'Oswald', fontSize: 30),
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
