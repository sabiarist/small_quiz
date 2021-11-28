import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List _questions = const [
    {
      'questionText': 'What\'s your favorite color ?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal ?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'What\'s your favorite Instructor ?',
      'answers': ['Me', 'Max', 'You', 'Him'],
    }
  ];
  var _questionIndex = 0;

  _answerQuestion() {
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                _questions,
                _questionIndex,
                _answerQuestion,
              )
            : const Result(),
      ),
    );
  }
}
