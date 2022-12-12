import 'package:doubleup_app/main_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(new DoubleUp());

class DoubleUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DoubleUpState();
}

class _DoubleUpState extends State<DoubleUp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "DoubleUp",
      home: Scaffold(
        body: DoubleUpGame(),
      ),
    );
  }
}
