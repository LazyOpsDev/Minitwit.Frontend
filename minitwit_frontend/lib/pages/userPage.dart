
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minitwit_frontend/models/user.dart';

class UserPage extends StatelessWidget {
  final User user;
  const UserPage(this.user);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(user.username),
          Text("Email: ${user.email}"),
          IconButton(icon: Icon(Icons.person_add), onPressed: () {

          })
        ],
      )
    );
  }

}