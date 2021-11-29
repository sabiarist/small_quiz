import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(this.resultScore, this.resetHandler, {Key? key}) : super(key: key);

  final int resultScore;
  final Function resetHandler;

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange !';
    } else {
      resultText = 'You are so bad !';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(16.0),
              primary: Colors.blue,
              textStyle: const TextStyle(
                fontSize: 20,
              ),
            ),
            onPressed: () => resetHandler(),
            child: const Text('Restart Quiz !'),
          ),
        ],
      ),
    );
  }
}
