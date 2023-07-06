import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selecthandler;
  final String answerText;
  const Answer(this.selecthandler, this.answerText,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.only(bottom: 10),
      width: double.infinity,
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.greenAccent,
            foregroundColor: Colors.black,
            textStyle: const TextStyle(fontSize: 16)),
        onPressed: () => selecthandler(),
        child: Text(answerText),
      ),
    );
  }
}
