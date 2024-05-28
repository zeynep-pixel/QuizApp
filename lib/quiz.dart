// ignore_for_file: empty_constructor_bodies

import 'package:flutter/material.dart';
import 'package:quizz_app/maincontainer.dart';
import 'package:quizz_app/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = "maincontainer-screen";

  void switchScreen() {
    setState(() {
      activeScreen = "questions-screen";
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = MainContainer(switchScreen);

    if (activeScreen == "questions-screen" ){
        screenWidget = QuestionsScreen();
    }
   
    return MaterialApp(
        home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 78, 13, 151),
          Color.fromARGB(255, 144, 85, 212)
        ])),
        child: screenWidget
      ),
    ));
  }
}
