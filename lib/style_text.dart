import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  const StyleText(this.outputText, {super.key});

  final String outputText; //class variable which is set

  @override
  Widget build(context) {
    return Text(
      outputText,
      style: const TextStyle(
        color: Color.fromARGB(255, 255, 255, 255),
        fontSize: 34.0,
      ),
    );
  }
}
