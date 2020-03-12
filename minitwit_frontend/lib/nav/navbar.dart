
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minitwit_frontend/models/user.dart';
import 'package:minitwit_frontend/pages/login.dart';
import 'package:minitwit_frontend/pages/public.dart';
import 'package:minitwit_frontend/pages/timeline.dart';
import 'package:minitwit_frontend/pages/userPage.dart';

class NavigationContainer extends StatelessWidget {

  final Widget body;
  final String title;
  final User currentUser;
  const NavigationContainer({
    Key key,
    this.title,
    this.body,
    this.currentUser
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: Container(),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.timeline),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationContainer(currentUser: currentUser,body: PublicPage(currentUser: currentUser,), title: "Public Timeline",)));
            }
          ),

          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationContainer(currentUser: currentUser,body: Timeline(currentUser: currentUser,), title: "Personal Timeline",)));
            }
          ),

          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationContainer(currentUser: currentUser, body: UserPage(currentUser), title: "User Page: ${currentUser.username}",)));
            }
          ),

          MaterialButton(
            child: Text("Logout"),
            color: Colors.red,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
            },
          )

        ],
      ),
      body: this.body,
    );
  }
}