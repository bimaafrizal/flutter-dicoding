import 'package:flutter/cupertino.dart';

class Heading extends StatelessWidget {
  final String text;
  Heading({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}

//stateless merupakan widget yang nilai statenya tidak bisa berubah
//state = properti