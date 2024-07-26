import 'package:flutter/material.dart';


class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answerText, required this.onTap});
  final String answerText;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    
    return ElevatedButton(
      onPressed: onTap,
      child: Text(answerText, textAlign: TextAlign.center,),
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          backgroundColor: const Color.fromARGB(255, 69, 21, 78),
          foregroundColor: const Color.fromARGB(255, 242, 239, 243),
          
         
    ),);
  }
}
