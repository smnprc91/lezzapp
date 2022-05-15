// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Padding(
          padding: EdgeInsets.only(top: 50),
          child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              'Verifica il tuo numero di telefono',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff128c7e),
              ),
            ),
          ),
        ),
 
        Padding(

          padding: EdgeInsets.only(top: 20),
          child: Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('LezzApp ti invierà un SMS con un codice di verifica, interisci il paese e il tuo numero di telefono, animale muoviti. ',style:TextStyle(fontSize: 18,),textAlign: TextAlign.justify,
          ),
            ),
        ),
        )
      ],
    ));
  }
}
