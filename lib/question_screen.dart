import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelected});

  final void Function(String answeer) onSelected;

  @override
  State<StatefulWidget> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionScreen> {
  var questionIndex = 0;
  void answerQuestion(String selectedAnswer) {
    widget.onSelected(selectedAnswer);
    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[questionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                currentQuestion.name,
                style: GoogleFonts.lato(
                  color: Color.fromARGB(255, 230, 172, 243),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              ...currentQuestion.getSuffledAnswers().map((item) {
                return AnswerButton(
                    answerText: item,
                    onTap: () {
                      answerQuestion(item);
                    });
              })
            ]),
      ),
    );
  }
}
