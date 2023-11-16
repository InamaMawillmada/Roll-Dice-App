import 'dart:math';

import 'package:flutter/material.dart';

class RollerDice1 extends StatefulWidget {
  const RollerDice1({super.key});

  @override
  State<RollerDice1> createState() => _RollerDiceState();
}

class _RollerDiceState extends State<RollerDice1> {
  var diceNumber = 1;
  var clickCount1 = 0;
  var clickCount2 = 0;
  int total1 = 0;
  int total2 = 0;
  bool isRoll2Enable = false;

  void roll_1() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
      List<int> playerOneValues = [diceNumber];
      clickCount1++;
      for (int value in playerOneValues) {
        total1 += value;
      }

      if (clickCount1 >= 5) {
        isRoll2Enable = true;
      }
    });
  }

  void roll_2() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
      List<int> playerOneValues = [diceNumber];
      clickCount2++;
      for (int value in playerOneValues) {
        total2 += value;
      }
    });
  }

  void reload() {
    setState(() {
      diceNumber = 1;
      clickCount1 = 0;
      clickCount2 = 0;
      total1 = 0;
      total2 = 0;
      isRoll2Enable = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 20),
        Image.asset(
          'assets/images/dice-$diceNumber.png',
          width: 200,
          alignment: Alignment.topCenter,
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            clickCount1 < 5
                ? TextButton(
                    onPressed: roll_1,
                    style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 173, 173, 173),
                      foregroundColor: Color.fromARGB(255, 0, 0, 0),
                      textStyle: const TextStyle(fontSize: 25),
                    ),
                    child: const Text('Roll Once'),
                  )
                : Column(
                    children: [
                      const Text(
                        'You have rolled 5 times!',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Total - $total1',
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
            const SizedBox(
              width: 12,
            ),
            isRoll2Enable
                ? clickCount2 < 5
                    ? TextButton(
                        onPressed: roll_2,
                        style: TextButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 173, 173, 173),
                          foregroundColor: Color.fromARGB(255, 0, 0, 0),
                          textStyle: const TextStyle(fontSize: 25),
                        ),
                        child: const Text('Roll Once'),
                      )
                    : Column(
                        children: [
                          const Text(
                            'You have rolled 5 times!',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Total - $total2',
                            style: const TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                : const Column(
                    children: [
                      Text(
                        "Not Your Turn Yet",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )
                    ],
                  )
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        if (clickCount1 == 5 && clickCount2 == 5)
          Text(
            total1 > total2
                ? 'Player 1 Wins!'
                : (total1 < total2 ? 'Player 2 Wins!' : 'It\'s a Tie!'),
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
        const SizedBox(
          height: 150,
        ),
        TextButton(
          onPressed: reload,
          child: Text(
            'Play Again',
          ),
          style: TextButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 173, 173, 173),
            foregroundColor: Color.fromARGB(255, 0, 0, 0),
            textStyle: const TextStyle(fontSize: 20),
          ),
        )
      ],
    );
  }
}
