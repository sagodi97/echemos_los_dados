import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: Text(
          'Echemos Los Dados',
          style: TextStyle(color: Colors.blueGrey[900]),
        ),
        backgroundColor: Colors.grey[50],
      ),
      body: RollTheDicePage(),
    ),
  ));
}

class RollTheDicePage extends StatefulWidget {
  @override
  _RollTheDicePageState createState() => _RollTheDicePageState();
}

class _RollTheDicePageState extends State<RollTheDicePage> {
  int daditoR = 2;
  int daditoL = 3;
  randomea() {
    setState(() {
      daditoL = Random().nextInt(6) + 1;
      daditoR = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    randomea();
                  },
                  child: Image.asset('images/dice$daditoL.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    randomea();
                  },
                  child: Image.asset('images/dice$daditoR.png'),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 100,
          ),
          ButtonTheme(
            minWidth: 120,
            height: 120,
            child: RaisedButton(
              onPressed: () {
                randomea();
              },
              shape: CircleBorder(),
              color: Colors.grey[50],
              textTheme: ButtonTextTheme.normal,
              child: Text(
                "Echalos!",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
