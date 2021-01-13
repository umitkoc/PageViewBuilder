import 'package:flutter/material.dart';
import 'package:learnbook/views/startpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.amberAccent,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: StartPage(),
    );
  }
}
