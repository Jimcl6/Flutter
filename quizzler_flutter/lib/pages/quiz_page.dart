// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quizzler_flutter/components/btn_true.dart';
import 'package:quizzler_flutter/components/correct_icon.dart';
import 'package:quizzler_flutter/components/wrong_icon.dart';
//TODO: Step 2 - Import the rFlutter_Alert package here.
import '../components/btn_false.dart';
import '../models/quiz_brain.dart';

QuizBrain quizBrain = QuizBrain();

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scoreKeeper = [];

  void answerChecker(bool chosenAnswer) {
    bool correctAnswer = quizBrain.getQuestionAnswer();

    setState(() {
      //TODO: Step 4 - Use IF/ELSE to check if we've reached the end of the quiz. If true, execute Part A, B, C, D.
      //TODO: Step 4 Part A - show an alert using rFlutter_alert (remember to read the docs for the package!)
      //HINT! Step 4 Part B is in the quiz_brain.dart
      //TODO: Step 4 Part C - reset the questionNumber,
      //TODO: Step 4 Part D - empty out the scoreKeeper.

      //TODO: Step 5 - If we've not reached the end, ELSE do the answer checking steps below 👇
      if (chosenAnswer == correctAnswer) {
        scoreKeeper.add(CorrectAnsIcon());
      } else {
        scoreKeeper.add(WrongAnsIcon());
      }

      quizBrain.nextQuestion();
    });
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
                quizBrain.getQuestionText(),
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
                onTap: () => answerChecker(true),
                text: 'True',
              )),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: BtnFalse(
              onTap: () => answerChecker(false),
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
