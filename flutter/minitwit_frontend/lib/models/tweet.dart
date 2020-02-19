import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tweet extends StatelessWidget {

  final String msg;
  final String author;

  const Tweet({
    Key key,
    this.msg,
    this.author
  }) : super(key: key);

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
