import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blue,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {

  @override
  _DicePageState  createState() => _DicePageState();

}
class _DicePageState extends State<DicePage> {

  int LeftDiceNumber=1;
  int RightDiceNumber=1;

  @override
  @deprecated
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(()   {

                  LeftDiceNumber=Random().nextInt(6)+1;

                  print('Just Number = $LeftDiceNumber');
                }
                );

              },
              child: Image.asset('images/dice$LeftDiceNumber.png'),
            ),
          ),


          Expanded(child: TextButton(onPressed: () {

            setState(()   {

              RightDiceNumber=Random().nextInt(6)+1;

              print('And Just Number = $RightDiceNumber');
            });
          },
            child: Image.asset('images/dice$RightDiceNumber.png'),
          ),

          ),

        ],

      ),
    );

  }
}

