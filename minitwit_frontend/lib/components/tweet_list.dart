
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/tweet.dart';

class TweetList extends StatefulWidget {

  final Future<List<Tweet>> tweets;
  const TweetList(this.tweets);

  @override
  State<StatefulWidget> createState() {
    return _TweetListState();
  }
}

Widget _buildListItem(BuildContext context, Tweet tweet) {
  return Card(
        color: Colors.blue,
        child: Container(
          height: 50.0,
          child: Center(child: Text("Author: ${tweet.author} | Msg: ${tweet.msg}", style: TextStyle(color: Colors.white), textAlign: TextAlign.center))),
      );
}

class _TweetListState extends State<TweetList> {
  @override
  Widget build(BuildContext context) {
    final builder = FutureBuilder<List<Tweet>>(
      future: widget.tweets, // TODO: Replace with future for getting 
      builder: (context, AsyncSnapshot<List<Tweet>> snapshot) {
        if (!snapshot.hasData) 
          return Center(child: CircularProgressIndicator());
        
        return Center(child: Container(
          width: 600.0,
          child:Scrollbar(
          child: ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (context, index) =>
                _buildListItem(context, snapshot.data[index]),
          ))));
      },
    );
    return builder; 
  }

}