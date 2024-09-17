import 'package:flutter/material.dart';
import 'package:flutter_course_project02_quiz/data/questions.dart';
import 'package:flutter_course_project02_quiz/widget/answer_button_widget.dart';
import 'package:fluttertoast/fluttertoast.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void nextQuestion() {
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      child: Container(
        margin: const EdgeInsets.all(24),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.question,
              style: const TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            // Display the shuffled options as answer buttons
            /*...currentQuestion.getShuffledAnswer().map((option) {
              return AnswerButtonWidget(text: option, onTap: nextQuestion,);
            }),*/

            AnswerButtonWidget(text: currentQuestion.options[0], onTap: () {}),
            AnswerButtonWidget(text: currentQuestion.options[1], onTap: () {}),
            AnswerButtonWidget(text: currentQuestion.options[2], onTap: () {})
          ],
        )),
      ),
    );
  }
}
