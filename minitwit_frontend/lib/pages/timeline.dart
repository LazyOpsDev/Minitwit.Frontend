
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minitwit_frontend/models/tweet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TimelinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Text("Timeline on Mobile"),
      desktop: _Timeline());
  }
}

class _Timeline extends StatelessWidget {

  final publicTweets = [
    Tweet(author: "John doe", msg: "Hello I am John Doe"),
    Tweet(author: "Bob", msg: "I like people who are called Alice"),
    Tweet(author: "Alice", msg: "How do I establish secure communication?"),
    Tweet(author: "Mallory", msg: "<script>alert('mwuhahaha')</script>"),
    Tweet(author: "Oracle", msg: "I am god."),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: publicTweets,
      ),
    );
  }

}