import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  String language = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
        actions: <Widget>[IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      ElevatedButton(
                          onPressed: () {}, child: Text('TombolvElevated'))
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      TextButton(onPressed: () {}, child: Text('Text Button'))
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      OutlinedButton(
                          onPressed: () {}, child: Text('Outline Button'))
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      IconButton(onPressed: () {}, icon: Icon(Icons.volume_up))
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      // DropdownButton<String>(
                      //   items: <DropdownMenuItem<String>>[
                      //     DropdownMenuItem<String>(
                      //       child: Text('Dart'),
                      //       value: 'Dart',
                      //     ),
                      //     DropdownMenuItem<String>(
                      //       child: Text('Kotlin'),
                      //       value: 'Kotlin',
                      //     ),
                      //     DropdownMenuItem<String>(
                      //       child: Text('Swift'),
                      //       value: 'Swift',
                      //     )
                      //   ],
                      //   hint: Text('Select Language'),
                      //   value: language,
                      //   onChanged: (dynamic value) {
                      //     setState(() {
                      //       language = value!;
                      //     });
                      //   },
                      // )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }

  void setState(Null Function() param0) {}
}
