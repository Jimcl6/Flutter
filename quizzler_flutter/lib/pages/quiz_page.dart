// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quizzler_flutter/components/btn_true.dart';
import 'package:quizzler_flutter/components/correct_icon.dart';
import 'package:quizzler_flutter/components/wrong_icon.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:google_fonts/google_fonts.dart';

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
    int scoreCounter = 0;
    setState(() {
      if (quizBrain.isFinished() == true) {
        Alert(
            context: context,
            type: AlertType.success,
            title: "DONE!",
            content: Text(
              'You\'ve completed the quiz! You got $scoreCounter/13',
              textAlign: TextAlign.center,
              style: GoogleFonts.ubuntu(fontSize: 25),
            ),
            buttons: [
              DialogButton(
                height: 55,
                radius: BorderRadius.all(Radius.circular(20)),
                color: Colors.green,
                onPressed: () => Navigator.pop(context),
                child: Text(
                  "Done".toUpperCase(),
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )
            ]).show();

        quizBrain.reset();

        scoreKeeper = [];
      } else {
        if (chosenAnswer == correctAnswer) {
          scoreKeeper.add(CorrectAnsIcon());
          scoreCounter++;
        } else {
          scoreKeeper.add(WrongAnsIcon());
        }

        quizBrain.nextQuestion();
      }
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
