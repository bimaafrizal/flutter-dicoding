import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Image'),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 16.0),
            child: Image.network(
              'https://picsum.photos/200/300',
              width: 200,
              height: 200,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16.0),
            child: Image.asset(
              'asset/bemsvuns.png',
              width: 200,
              height: 200,
            ),
          )
        ],
      )),
    );
    // // TODO: implement build
    // throw UnimplementedError();
  }
}
