
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minitwit_frontend/models/user.dart';

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
          Text("Email: ${user.email ?? user.username}"),
          SizedBox(height: 50.0),
          Text("Follow:"),
          IconButton(icon: Icon(Icons.person_add), onPressed: () {
            print("test");
          })
        ],
      )
    );
  }
}