class QuizQuestion{
  const QuizQuestion(this.name, this.answer);
  final String name;
  final List<String> answer;

  List<String> getSuffledAnswers() {
    final shuffledList = List.of(answer);
    shuffledList.shuffle();
    return shuffledList;


    
  }
}