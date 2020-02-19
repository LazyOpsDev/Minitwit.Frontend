import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:minitwit_frontend/config/application.dart';

class LoginPage extends StatelessWidget {

  final unController = TextEditingController();
  final pwController = TextEditingController();

  // TODO:
  bool validUser(String username, String password) {
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 150.0,
              child: TextField(
                controller: unController,
                decoration: InputDecoration(
                  hintText: 'Username',
                ),
              ),
            ),

            SizedBox(height: 50.0),

            Container(
              width: 150.0,
              child: TextField(
                obscureText: true,
                controller: pwController,
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
              ),
            ),

            SizedBox(height: 20.0),

            MaterialButton(
              child: Text("Login"),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                if (validUser(unController.text, pwController.text))
                  Application.router.navigateTo(context, "/home", transition: TransitionType.fadeIn);
                else
                  print("invalid username/password");
              },
            ),
            GestureDetector(
              child: Text("Register here",
                style: TextStyle(
                  color: Colors.blue
                ),
              ),
              onTap: () {
                Application.router.navigateTo(context, "/register", transition: TransitionType.fadeIn);
              },
            )
          ],
        ) 
      ),
    );
  }


}