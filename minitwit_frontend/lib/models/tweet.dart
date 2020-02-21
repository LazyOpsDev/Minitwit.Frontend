import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tweet extends StatelessWidget {

  String msg;
  String author;

  Tweet({
    Key key,
    this.msg,
    this.author
  }) : super(key: key);

  Tweet.fromJson(Map<String,dynamic> parsedJson){
    msg = parsedJson['Content'];
    author = parsedJson['UserId'];
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue,
      child: Row(
        children: <Widget>[
          Text("Author: $author"),
          SizedBox(width: 10.0),
          Text(msg),
        ],
      ),
    );
  }
}
