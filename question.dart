import 'package:tuple/tuple.dart';

class Question {
  int id;
  String text;
  List<Tuple2<String,int>> possibleAnswers;
  int answer;


  Question({this.id, this.text, this.possibleAnswers, this.answer});

  factory Question.fromJson(Map<String, dynamic> parsedJson) {
    return new Question(id: parsedJson['id'], text: parsedJson['text'],answer: 0);
  }

  @override
  String toString() {
    return 'Question{id: $id, text: $text, answer: $answer}';
  }
}
