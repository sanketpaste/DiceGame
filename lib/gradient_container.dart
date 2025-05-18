import 'package:dice_game/dice_roller.dart';
import 'package:dice_game/style_text.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.red({super.key})
      : color1 = const Color.fromARGB(255, 158, 3, 3),
        color2 = const Color.fromARGB(255, 188, 16, 16);

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: [
            color1,
            color2,
          ],
        ),
      ),
      child:const DiceRoller(),
      
    );
  }
}
