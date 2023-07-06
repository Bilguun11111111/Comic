

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/src/widgets/container.dart';

import 'answer.dart';
import 'package.flutter/material.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List questions;
  final Function questionAnswer;

  const Quiz(
      {required this.questionIndex,
      required this.questions,
      required this.questionAnswer,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(right: 15, top: 15),
          width: double.infinity,
          child: Text(
            "Асуулт ${questionIndex + 1}/${questions.length}",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            textAlign: TextAlign.right,
          ),
        ),
        Container(
          color: Colors.lightBlueAccent,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          width: double.infinity,
          child: Text(
            questions[questionIndex]["questionText"].toString(),
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
        for (Map answer in questions[questionIndex]["answer"] as List)
          Answer(()=>questionAnswer(answer["score"]), answer["text"]),
      ],
    );
  }
}
