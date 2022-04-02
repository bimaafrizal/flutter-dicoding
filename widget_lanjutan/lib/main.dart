import 'package:flutter/material.dart';
import 'package:widget_lanjutan/expanded.dart';
import 'package:widget_lanjutan/flexible.dart';
import 'package:widget_lanjutan/image.dart';
import 'package:widget_lanjutan/input.dart';
import 'package:widget_lanjutan/layout_builder_responsive.dart';
import 'package:widget_lanjutan/layout_builder_responsive_2.dart';
import 'package:widget_lanjutan/list_view_builder.dart';
import 'package:widget_lanjutan/list_view_separated.dart';
import 'package:widget_lanjutan/media_query_responsive.dart';
import 'package:widget_lanjutan/navigator_1.dart';
import 'buttons.dart';
import 'fonts.dart';
import 'list_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        //untuk merubah default font gumakan fontFamily
        // fontFamily: 'Oswald'
      ),
      home: FirstScreen(),
    );
  }
}
