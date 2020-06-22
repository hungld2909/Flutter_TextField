import 'package:flutter/material.dart';
import 'loginPage.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "",
      home: Center(
        child: LoginPage(),
      ),
    );
  }
}