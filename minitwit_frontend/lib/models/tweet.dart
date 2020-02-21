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
    return 
      Card(
        color: Colors.blue,
        child: Container(
          height: 50.0,
          child: Center(child: Text("Author: $author | Msg: $msg", style: TextStyle(color: Colors.white), textAlign: TextAlign.center))),
      );
  }
}
