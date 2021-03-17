import 'package:flutter/material.dart';
import 'Screen.dart';
class Jeevesh extends StatelessWidget {
  const Jeevesh({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Chat App"),
        centerTitle:true,
      ),
      body:Screen(),
    );
  }
}