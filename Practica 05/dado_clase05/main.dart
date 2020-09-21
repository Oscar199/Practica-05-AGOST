import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice Clase 05'),
          backgroundColor: Colors.red,
        ),
        body: DicePge()
      ),
    ),
  );
}

class DicePge extends StatefulWidget {
  @override
  _DicePgeState createState() => _DicePgeState();
}

class _DicePgeState extends State<DicePge> {
  int nuemroDadoIzquierdo =6;
  int numeroDadoDerecho =3;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  nuemroDadoIzquierdo=Random().nextInt(6)+1;
                });
              },
              child: Image.asset("images/dice$nuemroDadoIzquierdo.png"),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
              setState(() {
                numeroDadoDerecho=Random().nextInt(6)+1;
              });
              },
              child: Image.asset("images/dice$numeroDadoDerecho.png"),
            ),
          ),
        ],
      ),
    );
  }
}