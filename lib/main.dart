import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text('Echemos Los Dados'),
        backgroundColor: Colors.orange,
      ),
      body: RollTheDicePage(),
    ),
  ));
}

class RollTheDicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var dadito = 2;
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                dadito = 3;
              },
              child: Image.asset('images/dice$dadito.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                //TODO
              },
              child: Image.asset('images/dice$dadito.png'),
            ),
          ),
        ],
      ),
    );
  }
}
