import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color ?',
      'What\'s your favorite animal ?',
      'What\'s your favorite country ?',
      'What\'s your favorite phone brand ?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: const Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: () => print('Answer 2 chosen'),
              child: const Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: () {
                _answerQuestion();
              },
              child: const Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
