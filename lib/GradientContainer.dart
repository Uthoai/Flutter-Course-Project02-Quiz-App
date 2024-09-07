import 'package:flutter/material.dart';
import 'package:flutter_course_project02_quiz/StartingPage.dart';

class Gradientcontainer extends StatelessWidget{
  const Gradientcontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.deepPurple,Colors.deepPurpleAccent],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
        ),
      ),
      child: const Center(
          child: StartingScreen(),
      ),
    );
  }

}