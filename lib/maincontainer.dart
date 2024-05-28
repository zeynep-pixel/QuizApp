import 'package:flutter/material.dart';

class MainContainer extends StatelessWidget {
  const MainContainer(this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/quiz-logo.png',
            width: 300, color: Color.fromARGB(145, 248, 247, 249),
          ),
          const SizedBox(height: 60),
          const Text(
            "Learn flutter fun way!",
            style: TextStyle(
                color: Color.fromARGB(255, 247, 242, 242), fontSize: 24),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            label: const Text('Start Quiz'),
            style: OutlinedButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 247, 242, 242),
            ),
            icon: const Icon(Icons.arrow_right_alt),

          )
        ],
      ),
    );
  }
}
