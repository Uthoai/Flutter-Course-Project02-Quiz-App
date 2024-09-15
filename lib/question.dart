import 'package:flutter/cupertino.dart';

class QuestionScreen extends StatefulWidget{
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }

}

class _QuestionScreen extends State<QuestionScreen>{
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("Question Screen")
      ],
    );
  }
}