
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minitwit_frontend/components/tweet_list.dart';
import 'package:minitwit_frontend/models/tweet.dart';
import 'package:minitwit_frontend/services/api_provider.dart';
import 'package:minitwit_frontend/test_data/globals.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:toast/toast.dart';

Future<List<Tweet>> publicTweets = null; //fetchPublicTimeline();

class HomePage extends StatelessWidget {
  final bool isLoggedIn;
  const HomePage({this.isLoggedIn});
  @override
  Widget build(BuildContext context) {
    return  _HomePage(isLoggedIn: isLoggedIn);
  }
}

class _HomePage extends StatelessWidget {
  final tweetController = TextEditingController();
  final bool isLoggedIn;
  _HomePage({this.isLoggedIn});
  @override
  Widget build(BuildContext context) {
    var tweets = TweetList(publicTweets);
    // isLoggedIn ? 
    //   TweetList(Future.delayed(Duration(seconds: 2), () => publicTweets)) : List();
    //   TweetList(Future.delayed(Duration(seconds: 2), () => ApiProvider().fetchPublicTimeline()));
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 50.0,),
          Container(
            width: 300.0,
            child: TextField(
              controller: tweetController,
              decoration: InputDecoration(
                hintText: "What's on your mind?",
              ),
            ),
          ),
          MaterialButton(
            child: Text("Tweet"),
            color: Colors.blue,
            onPressed: () {
              tweetController.clear();
              Toast.show("Sent tweet!", context);
            },
          ),
          SizedBox(height: 30.0,),
          Expanded(
            flex: 8,
            child: tweets,
          ),
          Expanded(
            flex: 2,
            child: Text(""),
            ),
        ],
      ),
    );
  }
}