import 'package:flutter/material.dart';
import 'package:flutter_course_project02_quiz/question.dart';
import 'StartingScreen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz>{
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartingScreen(switchScreen);
    super.initState();
  }

  void switchScreen(){
    setState(() {
      activeScreen = const QuestionScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.deepPurple,Colors.deepPurpleAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
            ),
          ),
          child: Center(
            child: activeScreen,
          ),
        )
      ),
    );
  }
}
