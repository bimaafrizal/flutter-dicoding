import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollingScreenSeparated extends StatelessWidget {
  List<int> numberList = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List VIew')),
      body: ListView.separated(
        itemBuilder: (BuildContext context, index) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
                color: Colors.grey, border: Border.all(color: Colors.black)),
            child: Center(
              child: Text(
                '${numberList[index]}',
                style: TextStyle(fontSize: 50),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
        itemCount: numberList.length,
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}