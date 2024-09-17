import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/questions.dart';
import 'package:flutter_quiz/widget/question_summary.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chooseAnswer});

  final List<String> chooseAnswer;

  List<Map<String,Object>> getSummaryData(){
    final List<Map<String,Object>> summaryData = [];

    for (var i = 0; i < chooseAnswer.length; i++){
      summaryData.add(
          {
            'questionIndex': i,
            'question': questions[i].question,
            'correctAnswer': questions[i].options[0].toString(),
            'userAnswer': chooseAnswer[i],
          },
      );
    }
    return summaryData;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numOfQuestion = questions.length;
    final numOfCorrectAnswer = summaryData.where((data){
      return data['correctAnswer'] == data['userAnswer'];
    }).length;

    return Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'You answer $numOfCorrectAnswer out of $numOfQuestion questions correctly!',
              style: GoogleFonts.lato(
                  color: const Color(0xFFE400F8),
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 20),

            Text(
              'List of answer and questions...',
              style: GoogleFonts.lato(
                  color: const Color(0xFFE400F8),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 10),

            QuestionSummary(summaryData: summaryData),

            const SizedBox(height: 10),

            TextButton.icon(
              onPressed: () {},
              label: const Text(
                'Restart Quiz',
                style: TextStyle(
                  color: Color(0xFFE400F8),
                  fontSize: 20,
                ),
              ),
              icon: const Icon(
                Icons.refresh_sharp,
                color: Color(0xFF00FF00),
              ),
            )
          ],
        ));
  }
}
