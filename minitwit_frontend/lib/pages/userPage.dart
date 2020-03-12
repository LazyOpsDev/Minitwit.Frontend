
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minitwit_frontend/components/tweet_list.dart';
import 'package:minitwit_frontend/models/tweet.dart';
import 'package:minitwit_frontend/models/user.dart';
import 'package:minitwit_frontend/test_data/globals.dart';
import 'package:minitwit_frontend/services/backend.dart' as API;
import 'package:toast/toast.dart';

class UserPage extends StatelessWidget {
  final User user;
  UserPage(this.user);

  @override
  Widget build(BuildContext context) {
    final builder = FutureBuilder<List<Tweet>>(
      future: API.getUserTimeline(user), 
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 100.0),
          Text(user.username),
          SizedBox(height: 50.0),
          Text("Follow:"),
          SizedBox(height: 25.0),
          IconButton(icon: Icon(Icons.person_add), onPressed: () {
            Toast.show("Clicked follow!", context, duration: Toast.LENGTH_SHORT);
          }),
          SizedBox(height: 25.0),
          Expanded(
            child: builder,
          ),
        ],
      )
    );
  }
}