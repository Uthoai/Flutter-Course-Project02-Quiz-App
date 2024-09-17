import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/questions.dart';
import 'package:flutter_quiz/screen/question_screen.dart';
import 'package:flutter_quiz/screen/result_screen.dart';
import 'package:flutter_quiz/screen/starting_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
  final List<String> selectedAnswer = [];
  var activeScreen = 'starting-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer){
    selectedAnswer.add(answer);
    if(selectedAnswer.length == questions.length){
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartingScreen(switchScreen);

    if (activeScreen == 'question-screen'){
      screenWidget = QuestionScreen(onSelectedAnswer: chooseAnswer);
    }
    else if(activeScreen == 'result-screen'){
      screenWidget = ResultScreen(chooseAnswer: selectedAnswer);
    }

    return MaterialApp(
      home: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.deepPurple, Colors.deepPurpleAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
            ),
            child: Center(
                child: screenWidget
            ),
          )),
    );
  }
}
