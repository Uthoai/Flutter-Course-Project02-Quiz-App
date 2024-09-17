
class QuizQuestion{
  const QuizQuestion(this.question, this.options);
  final String question;
  final List<String> options;

  List<String> getShuffledAnswer(){
    final shuffledList = List.of(options);
    shuffledList.shuffle();
    return shuffledList;
  }
}