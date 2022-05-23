import 'package:flutter/material.dart';
import 'package:lezzapp/screen/homepage/homepage.dart';

import 'package:lezzapp/screen/login/logscreen.dart';

class App extends StatelessWidget {
  const App({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LezzApp',
      theme: ThemeData(
     
      primaryColor: const Color(0xff075e54)
      ),
      home: const HomePage()
    );
  }
}