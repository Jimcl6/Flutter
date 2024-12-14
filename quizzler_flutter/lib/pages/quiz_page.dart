// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quizzler_flutter/components/btn_true.dart';

import '../components/btn_false.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentQuestionIndex = 0;
  List<Icon> scoreKeeper = [];
  List<String> questions = [
    'You can lead a cow down stairs but not up stairs.',
    'Approximately one quarter of human bones are in the feet.',
    'A slug\'s blood is green.',
  ];

  List<bool> answers = [
    false,
    true,
    true,
  ];

  void trueChecker() {
    bool correctAnswer = answers[currentQuestionIndex];

    if (correctAnswer != true) {
      setState(() {
        scoreKeeper.add(Icon(
          Icons.close,
          size: 25,
          color: Colors.red,
        ));
        currentQuestionIndex++;
      });
    } else {
      setState(() {
        scoreKeeper.add(Icon(
          Icons.check,
          size: 25,
          color: Colors.green,
        ));
        currentQuestionIndex++;
      });
    }
  }

  void falseChecker() {
    bool correctAnswer = answers[currentQuestionIndex];

    if (correctAnswer != false) {
      setState(() {
        scoreKeeper.add(Icon(
          Icons.close,
          size: 25,
          color: Colors.red,
        ));
        currentQuestionIndex++;
      });
    } else {
      setState(() {
        scoreKeeper.add(Icon(
          Icons.check,
          size: 25,
          color: Colors.green,
        ));
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
                questions[currentQuestionIndex],
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
                icon: const Icon(
                  Icons.check,
                  color: Colors.white,
                ),
              )),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: BtnFalse(
              onTap: falseChecker,
              text: 'False',
              icon: const Icon(
                Icons.close,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        //TODO: Add a Row here as your score keeper
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
