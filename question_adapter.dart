import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/question.dart';

class QuestionAdapter extends StatefulWidget {
  Question question;
  final void Function(Question question, int answer) updateAnswer;

  QuestionAdapter({this.question, this.updateAnswer});

  @override
  _QuestionAdapter createState() => _QuestionAdapter(question: this.question);
}

class _QuestionAdapter extends State<QuestionAdapter> {
  Question question;
  double currentAnswer = 0;

  updateAnswer(Question question, int answer) {
    setState(() {
      question.answer = answer;
    });
  }

  _QuestionAdapter({this.question});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                question.text,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 6.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: 300,
                      child: Row(
                          children: question.possibleAnswers
                              .map((answer) => new Column(
                                    children: <Widget>[
                                      new Text('${answer.item1}'),
                                      new Radio(
                                          value: answer.item2,
                                          groupValue: currentAnswer,
                                          onChanged: (value) {
                                            setState(() {
                                              currentAnswer=value.toDouble();
                                            });
                                            updateAnswer(question, value);
                                          })
                                    ],
                                  ))
                              .toList())),
                  Text('${currentAnswer}'),
                ],
              ),
            ],
          ),
        ));
  }
}
