import 'package:flutter/material.dart';
import 'package:flutter_course_project02_quiz/widget/TextWidget.dart';

class StartingScreen extends StatelessWidget {
  const StartingScreen(this.changeScreen,{super.key});

  final void Function() changeScreen;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz_logo.png',
          width: 200,
          height: 220,
          //color: Colors.lightBlue,
        ),
        const SizedBox(height: 20),
        TextWidget("Learn Flutter the fun way!", 24),
        const SizedBox(height: 40),

        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 28,vertical: 14),
              elevation: 2,
              shape:RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(12)
              )
          ),
          onPressed: () {
            changeScreen();
          },
          icon: const Icon(Icons.arrow_right_alt_outlined),
          label: const Text("Start Quiz"),
        )
      ],
    );
  }

}

