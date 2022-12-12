import 'dart:math';

import 'package:flutter/material.dart';

class DoubleUpGame extends StatefulWidget {
  @override
  State<DoubleUpGame> createState() => _DoubleUpGameState();
}

class _DoubleUpGameState extends State<DoubleUpGame> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        HeadingText(),
        BackgroundImage(),
        NumberGenerator(),
        PlayButton(),
      ],
    );
  }
}

class HeadingText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Text(
            'DoubleUp',
            style: TextStyle(
              height: -6.5,
              fontSize: 55,
              color: Colors.purple,
              fontWeight: FontWeight.bold,
              fontFamily: 'JosefinSans',
            ),
          ),
        ),
      ),
    );
  }
}

class BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
                'assets/images/fulvio-di-sciullo-HEna_6UIQ5M-unsplash.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken)),
      ),
    );
  }
}

class NumberGenerator extends StatelessWidget {
  var rand = new Random();
  int randomnumber = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        direction: Axis.horizontal,
        children: List.generate(
            6,
            (index) => Text(
                  '$randomnumber',
                  style: TextStyle(
                    fontSize: 60,
                    color: Colors.purpleAccent,
                    height: -0.5,
                    backgroundColor: Colors.white,
                  ),
                )),
      ),
    );
  }
}

class PlayButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      alignment: Alignment.center,
      padding: EdgeInsets.all(32),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            backgroundColor: Colors.lightGreenAccent,
            foregroundColor: Colors.blue,
            minimumSize: Size(200, 50),
            textStyle: TextStyle(
              fontSize: 20,
              color: Colors.yellowAccent,
              fontFamily: 'JosefinSans',
            )),
        onPressed: () {},
        child: Text('Play'),
      ),
    );
  }
}

class UserInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: TextField(
            cursorColor: Colors.purpleAccent,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(5),
            ),
            maxLength: 10,
          ),
        ),
      ),
    );
  }
}
