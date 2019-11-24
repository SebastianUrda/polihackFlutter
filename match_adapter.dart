import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/question.dart';

class MatchAdapter extends StatefulWidget {
  String  username;
  double matchProcent;


  MatchAdapter({this.username, this.matchProcent});

  @override
  _MatchAdapter createState() => _MatchAdapter(username: this.username,matchProcent: this.matchProcent);
}

class _MatchAdapter extends State<MatchAdapter> {
  String  username;
  double matchProcent;

  _MatchAdapter({this.username, this.matchProcent});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                username,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 6.0),
              Text(
                matchProcent.toString(),
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ));
  }
}
