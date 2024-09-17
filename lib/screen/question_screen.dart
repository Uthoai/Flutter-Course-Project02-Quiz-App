import 'package:flutter/material.dart';
import '../data/questions.dart';
import '../widget/answer_button_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectedAnswer});
  final void Function(String answer) onSelectedAnswer;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void nextQuestion(String answer) {
    widget.onSelectedAnswer(answer);

    setState(() {
      if(currentQuestionIndex < questions.length - 1){
        currentQuestionIndex++;
      }
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
              style: GoogleFonts.lato(
                color: const Color(0xFFE400F8),
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            // Display the shuffled options as answer buttons
            ...currentQuestion.getShuffledAnswer().map((option) {
              return AnswerButtonWidget(
                text: option,
                onTap: () {
                  nextQuestion(option);
                },
              );
            }),
          ],
        )),
      ),
    );
  }
}
