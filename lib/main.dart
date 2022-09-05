import 'package:flutter/material.dart';
import 'dart:developer' as developer;
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rigthDiceNumber = 1;

  void getDiceNumber() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rigthDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              style:
                  TextButton.styleFrom(splashFactory: NoSplash.splashFactory),
              onPressed: () {
                getDiceNumber();
                developer.log('Button pressed 1');
              },
              child: Image.asset(
                ('images/dice$leftDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              style:
                  TextButton.styleFrom(splashFactory: NoSplash.splashFactory),
              onPressed: () {
                getDiceNumber();
                developer.log('Button pressed 2');
              },
              child: Image.asset(
                ('images/dice$rigthDiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
