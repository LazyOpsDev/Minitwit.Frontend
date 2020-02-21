
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minitwit_frontend/models/user.dart';
import 'package:minitwit_frontend/pages/login.dart';
import 'package:minitwit_frontend/pages/timeline.dart';
import 'package:minitwit_frontend/pages/userPage.dart';

class NavigationContainer extends StatelessWidget {

  final Widget body;
  const NavigationContainer({
    Key key,
    this.body
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.timeline),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationContainer(body: TimelinePage())));
              //Application.router.navigateTo(context, "/timeline", transition: TransitionType.fadeIn);
            }
          ),

          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              var fakeUser = User(email: "fake@email.com", id: "123", username: "John Doe");
              Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationContainer(body: UserPage(fakeUser))));
              //Application.router.navigateTo(context, "/users/123", transition: TransitionType.fadeIn);
            }
          ),

          MaterialButton(
            child: Text("Logout"),
            color: Colors.red,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
              //Application.router.navigateTo(context, "/login", transition: TransitionType.fadeIn);
            },
          )

        ],
      ),
      body: this.body,
    );
  }
}