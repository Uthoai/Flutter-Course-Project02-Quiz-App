import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget{
  String text;
  double size;
  Color color;
  TextWidget(this.text, this.size, this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize:size,
      ),
    );
  }
}