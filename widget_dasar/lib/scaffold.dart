//dasar dari aplilkasi
//terdiri dari 3 bagian yaitu appBar, Body, dan Floating Action Button

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'container1.dart';
//action bisa menerima banyak widget
//leading hanya bisa menerima satu widget saja

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.white,
          onPressed: () {},
        ),
        title: Text('Fist Screen'),
        actions: [
          Padding( //padding claass harus memiliki widget
            padding: EdgeInsets.all(10),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                )),
          )
        ],
      ),
      // body: Center(
      //   child: Text('Hello World'),
      // ),
      body: ContainerClass(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),

      // appBar: AppBar(
      //   title: Text('First Screen'),
      //   actions: <Widget>[
      //     IconButton(
      //         onPressed: () {},
      //         icon: Icon(
      //           Icons.search,
      //           color: Colors.white,
      //         ))
      //   ],
      // ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
