
import 'package:flutter/cupertino.dart';
import 'package:minitwit_frontend/components/tweet_list.dart';
import 'package:minitwit_frontend/test_data/globals.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Text("Timeline on Mobile"),
      desktop: _HomePage());
  }
}

class _HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TweetList(Future.delayed(Duration(seconds: 2), () => publicTweets));
  }

}