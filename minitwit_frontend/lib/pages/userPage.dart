
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minitwit_frontend/components/tweet_list.dart';
import 'package:minitwit_frontend/models/user.dart';
import 'package:minitwit_frontend/test_data/globals.dart';
import 'package:toast/toast.dart';

class UserPage extends StatelessWidget {
  final User user;
  UserPage(this.user);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(user.username),
          SizedBox(height: 50.0),
          Text("Follow:"),
          SizedBox(height: 25.0),
          IconButton(icon: Icon(Icons.person_add), onPressed: () {
            Toast.show("Clicked follow!", context, duration: Toast.LENGTH_SHORT);
          }),

          TweetList(Future.delayed(Duration(seconds: 2), () => privateTweets)),

        ],
      )
    );
  }
}