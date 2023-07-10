import 'dart:math';

import 'package:flutter/material.dart';

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: myScaffold,
    );
  }

  static Scaffold myScaffold = Scaffold(
    backgroundColor: Colors.red,
    appBar: myAppBar,
    body: const DicePage(),
  );

  static AppBar myAppBar = AppBar(
    title: const Text('Dice'),
    centerTitle: true,
    backgroundColor: Colors.red,
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  static String dice1Image = 'images/dice1.png';
  static String dice2Image = 'images/dice2.png';
  static String dice3Image = 'images/dice3.png';
  static String dice4Image = 'images/dice4.png';
  static String dice5Image = 'images/dice5.png';
  static String dice6Image = 'images/dice6.png';
  static var diceImages = [
    dice1Image,
    dice2Image,
    dice3Image,
    dice4Image,
    dice5Image,
    dice6Image,
  ];

  static String dice1 = diceImages[0];
  static String dice2 = diceImages[0];

  static int newDice() {
    Random random = Random();
    int randomNumber = random.nextInt(6);
    int diceNumber = randomNumber + 1;

    return randomNumber;
  }

  static void rollBothDie() {
    dice1 = diceImages[Random().nextInt(6)];
    dice2 = diceImages[Random().nextInt(6)];
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: TextButton(
            onPressed: () {
              setState(() {
                // dice1 = diceImages[newDice()];
                // dice2 = diceImages[newDice()];
                rollBothDie();
              });
            },
            child: Image.asset(dice1),
          ),
        ),
        Expanded(
          flex: 1,
          child: TextButton(
            onPressed: () {
              setState(() {
                // dice1 = diceImages[newDice()];
                // dice2 = diceImages[newDice()];
                rollBothDie();
              });
            },
            child: Image.asset(dice2),
          ),
        )
      ],
    ));
  }
}

//#region Stateless DicePage

class DicePage2 extends StatelessWidget {
  const DicePage2({super.key});

  static String dice1Image = 'images/dice1.png';
  static String dice2Image = 'images/dice2.png';
  static String dice3Image = 'images/dice3.png';
  static String dice4Image = 'images/dice4.png';
  static String dice5Image = 'images/dice5.png';
  static String dice6Image = 'images/dice6.png';
  static var diceImages = [
    dice1Image,
    dice2Image,
    dice3Image,
    dice4Image,
    dice5Image,
    dice6Image,
  ];

  static String dice1 = diceImages[2];
  static String dice2 = diceImages[0];

  static int newDice() {
    Random random = Random();
    int randomNumber = random.nextInt(6);
    int diceNumber = randomNumber + 1;
    print(
      'New dice is: $diceNumber',
    );
    return randomNumber;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: TextButton(
            onPressed: () {
              dice1 = diceImages[newDice()];
            },
            child: Image.asset(dice1),
          ),
        ),
        Expanded(
          flex: 1,
          child: TextButton(
            onPressed: () {
              dice2 = diceImages[newDice()];
            },
            child: Image.asset(dice2),
          ),
        )
      ],
    ));
  }

  // static Row diceRow = Row(
  //   children: <Widget>[expandedDice1, expandedDice2],
  // );
  // //#region Dice Images
  //
  // static dynamic imagePadding = EdgeInsets.all(16);
  // static Expanded expandedDice1 = Expanded(
  //   flex: 1,
  //   child: TextButton(
  //     onPressed: () {
  //       dice1 = newDice();
  //     },
  //     child: Image.asset(dice1),
  //   ),
  // );
  // static Expanded expandedDice2 = Expanded(
  //   flex: 1,
  //   child: TextButton(
  //     onPressed: () {
  //       dice2 = newDice();
  //     },
  //     child: Image.asset(dice2),
  //   ),
  // );

//#endregion Dice Images
}

//#endregion DicePage
