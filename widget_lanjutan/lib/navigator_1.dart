import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget_lanjutan/navigator_2.dart';

class FirstScreen extends StatelessWidget {
  final String message = 'Hello from first screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Screen')),
      body: Center(
          child: ElevatedButton(
        child: Text('Pindah Screen'),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return SecondScreen(message);
          }));
        },
      )),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
