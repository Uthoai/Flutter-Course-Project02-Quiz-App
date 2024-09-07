import 'package:flutter/material.dart';
import 'package:flutter_course_project02_quiz/TextWidget.dart';

class StartingScreen extends StatefulWidget {
  const StartingScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _StartingScreen();
  }
}

class _StartingScreen extends State {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz_logo.png',
          width: 200,
          height: 220,
        ),

        const SizedBox(height: 20),

        TextWidget("Learn Flutter the fun way!", 24),

        const SizedBox(height: 20),
        
        OutlinedButton(onPressed: (){}, child: TextWidget("Start Quiz",20))
      ],
    );
  }
}
