import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget{
  String text;
  double size;
  TextWidget(this.text, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize:size,
      ),
    );
  }
}