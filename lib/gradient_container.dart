import 'package:flutter/material.dart';
import 'package:roller_dice_application/roller_dicer.dart';

const beginAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: beginAlignment,
            end: endAlignment,
            colors: colors,
          ),
          image: const DecorationImage(
              image: AssetImage('assets/images/dice-bg.jpg'),
              alignment: Alignment.bottomCenter,
              repeat: ImageRepeat.noRepeat)),
      child: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RollerDice1(),
            SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}
