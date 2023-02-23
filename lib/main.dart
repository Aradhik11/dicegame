import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int leftDice = 1;
  int rightDice = 1;
  void Changedice() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: Text('DICE APP'),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(child: TextButton(onPressed: () {
              Changedice();
            }, child: Image.asset('images/DICE$leftDice.png'))

            ),
            Expanded(child: TextButton(onPressed: (){
              Changedice();
            }, child: Image.asset('images/DICE$rightDice.png'))
            ),
          ],
        ),
      ),
    );
  }
}

