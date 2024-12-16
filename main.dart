import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Acak Dadu',
            ), // Text
          ), // Center
          backgroundColor: Colors.red[900],
        ), // AppBar
        body: AcakDadu(),
      ), // Scaffold
    ); // MaterialApp
  }
}

class AcakDadu extends StatefulWidget {
  const AcakDadu({Key? key}) : super(key: key);

  @override
  _AcakDaduState createState() => _AcakDaduState();
}

class _AcakDaduState extends State<AcakDadu> {
  int dadukiri = 1;
  int dadukanan = 2;

  void acakAngkaDadu() {
    setState(() {
      dadukiri = Random().nextInt(6) + 1;
      dadukanan = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: acakAngkaDadu,
                child: Image.asset(
                  'images/dice$dadukiri.png',
                ), // Image.asset
              ), // GestureDetector
            ), // Expanded
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: acakAngkaDadu,
                child: Image.asset(
                  'images/dice$dadukanan.png',
                ), // Image.asset
              ), // GestureDetector
            ), // Expanded
          ),
        ],
      ),
    );
  }
}