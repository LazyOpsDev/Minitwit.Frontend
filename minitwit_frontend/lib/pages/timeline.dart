
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minitwit_frontend/models/tweet.dart';
import 'package:minitwit_frontend/services/backend.dart';
import 'package:toast/toast.dart';

class Timeline extends StatefulWidget {
  const Timeline();

  @override
  State<StatefulWidget> createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
  final tweetController = TextEditingController();

  Future<List<Tweet>> publicTweets;

  @override
  void initState() {
    super.initState();
    publicTweets = getPublicTimeline();
  }

  @override
  Widget build(BuildContext context) {

    final builder = FutureBuilder<List<Tweet>>(
      future: publicTweets, 
      builder: (context, AsyncSnapshot<List<Tweet>> snapshot) {
        if (!snapshot.hasData) 
          return Center(child: CircularProgressIndicator());
        
        return Center(child: Container(
          width: 600.0,
          child:Scrollbar(
          child: ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (context, index) {
                return Card(
                  color: Colors.blue,
                  child: Container(
                    height: 50.0,
                    child: Center(child: Text("Author: ${snapshot.data[index].author} | Msg: ${snapshot.data[index].msg}", style: TextStyle(color: Colors.white), textAlign: TextAlign.center))),
                );
            }
          ))));
      },
    );

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
            child: builder,
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