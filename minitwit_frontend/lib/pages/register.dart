
import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minitwit_frontend/config/application.dart';
import 'package:minitwit_frontend/models/user.dart';
import 'package:toast/toast.dart';

class RegisterPage extends StatelessWidget {
  final unController = TextEditingController();
  final pwController = TextEditingController();
  final cpwController = TextEditingController();
  final emailController = TextEditingController();

  final textFieldWidth = 200.0;

  bool usernameAlreadyExists(String username) {
    return false;
  }

  bool emailAlreadyExists(String email) {
    return false;
  }

  bool registerUser(RegisterUser user) {
    return true;
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Sign up here!", 
              style: TextStyle(
                fontSize: 48.0,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 100.0),

            Container(
              width: textFieldWidth,
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
              ),
            ),

            SizedBox(height: 25.0),

            Container(
              width: textFieldWidth,
              child: TextField(
                controller: unController,
                decoration: InputDecoration(
                  hintText: 'Username',
                ),
              ),
            ),

            SizedBox(height: 25.0),

            Container(
              width: textFieldWidth,
              child: TextField(
                obscureText: true,
                controller: pwController,
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
              ),
            ),

            SizedBox(height: 25.0),

            Container(
              width: textFieldWidth,
              child: TextField(
                obscureText: true,
                controller: cpwController,
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                ),
              ),
            ),

            SizedBox(height: 25.0),

            MaterialButton(
              child: Text("Sign up"),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                if (pwController.text != cpwController.text) {
                  Toast.show("Unable to confirm password", context, backgroundColor: Colors.red, duration: Toast.LENGTH_LONG + Toast.LENGTH_SHORT);
                  return;
                }

                if (usernameAlreadyExists(unController.text)) {
                  Toast.show("Username is taken", context, backgroundColor: Colors.red, duration: Toast.LENGTH_LONG + Toast.LENGTH_SHORT);
                  return;
                }

                if (emailAlreadyExists(emailController.text)) {
                  Toast.show("Email is already being used", context, backgroundColor: Colors.red, duration: Toast.LENGTH_LONG + Toast.LENGTH_SHORT);
                  return;
                }

                RegisterUser newUser = RegisterUser(
                  id: "totally random id",
                  email: emailController.text,
                  username: unController.text,
                  password: pwController.text, 
                );



                Application.router.navigateTo(context, "/login", transition: TransitionType.fadeIn);
              },
            ),
          ],
        ) 
      ),
    );
  }
}
