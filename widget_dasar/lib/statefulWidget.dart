//stateful nilainya dapat berubah ubah
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BiggerText extends StatefulWidget {
  final String text;

  const BiggerText({required this.text});
  
  _BigerTextState createState() => _BigerTextState();
  // @override
  // State<StatefulWidget> createState() {
  //   // TODO: implement createState
  //   throw UnimplementedError();
  // }
}

class _BigerTextState extends State<BiggerText> {
  double _textSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          widget.text,
          style: TextStyle(fontSize: _textSize),
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                _textSize = 32.0;
              });
            },
            child: Text('Perbesar'))
      ],
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
