import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(dice_page());
}

class dice_page extends StatelessWidget {
  const dice_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'DICE GAME',
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.white,
        ),
        body: dice_body(),
        backgroundColor: Colors.white,
      ),
    );
  }
}

class dice_body extends StatefulWidget {
  const dice_body({Key? key}) : super(key: key);

  @override
  State<dice_body> createState() => _dice_bodyState();
}

class _dice_bodyState extends State<dice_body> {
  int left = 1;
  int right = 1;

  void dice_change() {
    setState(() {
      right = Random().nextInt(6) + 1;
      left = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: () {
                dice_change();
              },
              child: Image.asset('images/dice$left.jpg'),
            ),
          ),
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: () {
                dice_change();
              },
              child: Image.asset('images/dice$right.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
