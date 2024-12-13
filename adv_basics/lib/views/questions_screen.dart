import 'package:adv_basics/components/btn_answer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adv_basics/models/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentQuestion.question,
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSans(
                  textStyle: TextStyle(
                color: Colors.deepPurple[100],
                fontSize: 20,
              )),
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffledAnswers().map(
              (answer) {
                return AnswerButton(onTap: answerQuestion, child: answer);
              },
            ),
          ],
        ),
      ),
    );
  }
}
