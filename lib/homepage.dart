import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage one = AssetImage('assets/one.png');
  AssetImage two = AssetImage('assets/two.png');
  AssetImage three = AssetImage('assets/three.png');
  AssetImage four = AssetImage('assets/four.png');
  AssetImage five = AssetImage('assets/five.png');
  AssetImage six = AssetImage('assets/six.png');

  AssetImage diceImage;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      diceImage = one;
    });
  }

  void rollDice() {
    int random = 1 + Random().nextInt(6);
    AssetImage newImage;
    switch (random) {
      case 1:
        newImage = one;
        break;
      case 2:
        newImage = two;
        break;
      case 3:
        newImage = three;
        break;
      case 4:
        newImage = four;
        break;
      case 5:
        newImage = five;
        break;
      case 6:
        newImage = six;
        break;
    }
    setState(() {
      diceImage = newImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dice Roller',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: diceImage,
                width: 200.0,
                height: 200.0,
              ),
              Container(
                  margin: EdgeInsets.only(top: 100.0),
                  child: ElevatedButton(
                    child: Text(
                      'Roll the dice!',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.yellow,
                      padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                    ),
                    onPressed: rollDice,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
