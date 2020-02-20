

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minitwit_frontend/models/tweet.dart';

class TweetList extends StatefulWidget {

  final Future<List<Tweet>> tweets;
  const TweetList(this.tweets);

  @override
  State<StatefulWidget> createState() {
    return _TweetListState();
  }
}

Widget _buildListItem(BuildContext context, Tweet tweet) {
  return Text("Author: ${tweet.author} | Msg: ${tweet.msg}");
}

class _TweetListState extends State<TweetList> {
  @override
  Widget build(BuildContext context) {
    final builder = FutureBuilder(
      future: widget.tweets,
      builder: (context, AsyncSnapshot<List<Tweet>> snapshot) {
        if (!snapshot.hasData) 
          return Center(child: CircularProgressIndicator());
        
        return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (context, index) =>
                _buildListItem(context, snapshot.data[index]),
          );
      },
    );
    return SizedBox(
            height: 200.0,
            child: builder);
  }

}