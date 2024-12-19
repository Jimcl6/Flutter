// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quizzler_flutter/components/btn_true.dart';
import 'package:quizzler_flutter/components/correct_icon.dart';
import 'package:quizzler_flutter/components/wrong_icon.dart';

import '../components/btn_false.dart';
import '../models/quiz_brain.dart';

QuizBrain quizBrain = QuizBrain();

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentQuestionIndex = 0;
  List<Widget> scoreKeeper = [];

  void trueChecker() {
    bool correctAnswer =
        quizBrain.getQuestionAnswer(questionNum: currentQuestionIndex);

    if (correctAnswer != true) {
      setState(() {
        scoreKeeper.add(WrongAnsIcon());
        currentQuestionIndex++;
      });
    } else {
      setState(() {
        scoreKeeper.add(CorrectAnsIcon());
        currentQuestionIndex++;
      });
    }
  }

  void falseChecker() {
    bool correctAnswer =
        quizBrain.getQuestionAnswer(questionNum: currentQuestionIndex);

    if (correctAnswer != false) {
      setState(() {
        scoreKeeper.add(WrongAnsIcon());
        currentQuestionIndex++;
      });
    } else {
      setState(() {
        scoreKeeper.add(CorrectAnsIcon());
        currentQuestionIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(
                  questionNum: currentQuestionIndex,
                ),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: BtnTrue(
                onTap: trueChecker,
                text: 'True',
              )),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: BtnFalse(
              onTap: falseChecker,
              text: 'False',
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
