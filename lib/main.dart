import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Color.fromARGB(234, 44, 119, 249),
            Color.fromARGB(255, 24, 107, 100)
          ],
        ),
      ),
    ),
  );
}
