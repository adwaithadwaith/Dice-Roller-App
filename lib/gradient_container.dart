import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

const startAlignment = Alignment.topRight;
const endAlignment = Alignment.bottomLeft;

class GradientContainer extends StatelessWidget {
  const GradientContainer(
      {super.key,
      required this.colors}); //required is used so that colors cant have null values
  // const GradientContainer.purple({
  //   super.key,
  // })  : color1 = Colors.blueAccent,
  //       color2 = Colors.pink;
  // final Color color1, color2;
  final List<Color> colors;
  // final Color color1;
  // final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
          transform: const GradientRotation(35),
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
