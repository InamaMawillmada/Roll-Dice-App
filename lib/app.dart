// import 'package:flutter/material.dart';
// import 'package:roller_dice_application/gradient_container.dart';

// class RollerDiceApp extends StatelessWidget {
//   const RollerDiceApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return (MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: const Color.fromARGB(255, 19, 71, 114),
//           title: const Text(
//             'Roller Dice App',
//             textAlign: TextAlign.center,
//           ),
//         ),
//         body: const GradientContainer(
//           colors: [Color.fromARGB(255, 0, 0, 0), Color.fromARGB(255, 0, 0, 0)],
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {},
//           backgroundColor: const Color.fromARGB(255, 19, 71, 114),
//           child: const Text(
//             "Play Again",
//             textAlign: TextAlign.center,
//           ),
//         ),
//       ),
//     ));
//   }
// }

import 'package:flutter/material.dart';
import 'package:roller_dice_application/gradient_container.dart';
import 'package:roller_dice_application/roller_dicer.dart';

class RollerDiceApp extends StatefulWidget {
  const RollerDiceApp({super.key});

  @override
  State<RollerDiceApp> createState() => _RollerDiceAppState();
}

class _RollerDiceAppState extends State<RollerDiceApp> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 19, 71, 114),
          title: const Text(
            'Roller Dice App',
            textAlign: TextAlign.center,
          ),
        ),
        body: const GradientContainer(
          colors: [Color.fromARGB(255, 0, 0, 0), Color.fromARGB(255, 0, 0, 0)],
        ),
        
      ),
    ));
  }
}
