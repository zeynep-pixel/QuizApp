import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/start_screen.dart';




class Quiz extends StatefulWidget {
 const Quiz({super.key});
 @override
 State<Quiz> createState(){
  return _QuizState();
 }

}

class _QuizState extends  State<Quiz>{
  var activeScreen = 'active-screen';
  List<String> selectedAnswer = [];
  void switchScreen(){
    setState(() { 
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswers(String answer){
    selectedAnswer.add(answer);
    if(selectedAnswer.length == questions.length){
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswer = [];
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context){
    Widget screenWidget = StartScreen(switchScreen);
    if(activeScreen=='questions-screen'){
      screenWidget = QuestionScreen(onSelected: chooseAnswers,);
    }
    if(activeScreen=='results-screen'){
      screenWidget = ResultScreen(chosenAnswers: selectedAnswer,onRestart: restartQuiz,);
    }



    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.deepOrange, Colors.deepPurple],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight),
          ),
          child: screenWidget,
          ),
      ),
    );
  }
}





