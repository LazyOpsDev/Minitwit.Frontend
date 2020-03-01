
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
  const NavigationContainer({
    Key key,
    this.title,
    this.body
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationContainer(body: PublicPage(), title: "Public Timeline",)));
            }
          ),

          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationContainer(body: Timeline(), title: "Personal Timeline",)));
            }
          ),

          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              var fakeUser = User(username: "John Doe");
              Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationContainer(body: UserPage(fakeUser), title: "User Page: ${fakeUser.username}",)));
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