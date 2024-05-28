import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{
  AnswerButton(this.answerText, this.onTap, {super.key});
  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              backgroundColor:  const Color.fromARGB(255, 33, 1, 95),
              foregroundColor:  Color.fromARGB(255, 210, 205, 221),
            ),
            child: Text(answerText),
          );
  }
 
 

}