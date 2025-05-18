import 'dart:math';

import 'package:dice_game/style_text.dart';
import 'package:flutter/material.dart';


final randmizer =Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll =2;


  void rollDice(){
   setState(() {
     currentDiceRoll= randmizer.nextInt(6)+1;
   });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
           'assets/images/dice-$currentDiceRoll.png',
           width: 200,
          ),
          TextButton(
            onPressed: rollDice, 
            child:const StyleText('Roll Dice'),),
        ],
      ),
    );
  }
}