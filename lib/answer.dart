import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer(this.selectHandler, {Key? key}) : super(key: key);

  final Function selectHandler;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith((states) => Colors.white),
          backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.deepPurple),
        ),
        child: const Text('Answer 1'),
        onPressed: () => selectHandler(),
      ),
    );
  }
}
