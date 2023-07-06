import 'package:flutter/material.dart';
import 'package:myapp/Comic/first_screen.dart';
import 'package:myapp/Comic/login_screen.dart';
import 'package:myapp/Comic/second_screen.dart';
import 'package:myapp/answer.dart';
import 'package:myapp/model/plan_provider.dart';
import 'package:myapp/quiz.dart';
import 'package:myapp/result.dart';
import 'package:myapp/view/plan_creator_screen.dart';
import 'package:myapp/view/plan_screen.dart';

void main() => runApp(MyApp());

const questions = [
  {
    "questionText": "Dart хэлийг анх хэзээ олон нийтэд танилцуулсан вэ?",
    "answer": [
      {"text": "2010", "score": 0},
      {"text": "2011", "score": 1},
      {"text": "2012", "score": 0},
      {"text": "2013", "score": 0},
      {"text": "2014", "score": 0}
    ]
  },
  {
    "questionText": "Flutter-н 1.0 хувилбар хэзээ гарсан вэ?",
    "answer": [
      {"text": "2015 оны 10 сар", "score": 0},
      {"text": "2016 оны 03 сар", "score": 0},
      {"text": "2018 оны 12 сар", "score": 1}
    ]
  },
];

// ignore: use_key_in_widget_constructors
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int questionIndex = 0;
  int totalScore = 0;
  void questionAnswer(int score) {
    totalScore += score;
    setState(() {
      // if (questionIndex < questions.length - 1) {
      questionIndex += 1;
      // }
      // else {questionIndex = 0;}
    });
  }

  void resetQuiz(){
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var w500;
    return MaterialApp(
      home: LoginScreen(),//PlanProvider(child: PlanCreatorScreen(),),
      // Scaffold(
      //   appBar: AppBar(
      //     title: const Text("Quiz App"),
      //   ),
      //   body: questionIndex < (questions.length)
      //       ? Quiz(
      //           questionIndex: questionIndex,
      //           questions: questions,
      //           questionAnswer: questionAnswer)
      //       : result(totalScore,resetQuiz),
      // ),
    );
  }
}
