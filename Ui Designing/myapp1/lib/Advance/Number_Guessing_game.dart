// ignore_for_file: file_names

import 'dart:math';
import 'package:flutter/material.dart';


// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _random = Random();
  late int _targetNumber;
  late int _userGuess;
  String _message = '';
  int _attempts = 0;

  @override
  void initState() {
    super.initState();
    _resetGame();
  }

  void _resetGame() {
    _targetNumber = _random.nextInt(100) + 1;
    _userGuess = 0;
    _message = '';
    _attempts = 0;
  }

  void _checkGuess() {
    setState(() {
      _attempts++;
      if (_userGuess == _targetNumber) {
        _message = 'Congratulations! You guessed the right number in $_attempts attempts.';
      } else if (_userGuess < _targetNumber) {
        _message = 'Try a higher number.';
      } else {
        _message = 'Try a lower number.';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Number Guessing Game'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           const Text(
              'Guess a number between 1 and 100:',
              style: TextStyle(fontSize: 18),
            ),
           const SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  _userGuess = int.tryParse(value)!;
                });
              },
            ),
           const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // ignore: unnecessary_null_comparison
                if (_userGuess != null) {
                  _checkGuess();
                }
              },
              child: const Text('Check Guess'),
            ),
           const SizedBox(height: 20),
            Text(
              _message,
              style:const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
           const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _resetGame();
              },
              child: const Text('Reset Game'),
            ),
          ],
        ),
      ),
    );
  }
}
