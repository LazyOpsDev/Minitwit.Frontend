import 'package:flutter/material.dart';
import 'package:minitwit_frontend/models/user.dart';
import 'package:minitwit_frontend/nav/navbar.dart';
import 'package:minitwit_frontend/pages/public.dart';
import 'package:minitwit_frontend/pages/register.dart';
import 'package:minitwit_frontend/services/backend.dart' as API;

class LoginPage extends StatelessWidget {  
  final unController = TextEditingController();
  final pwController = TextEditingController();

  final textFieldWidth = 200.0;

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
            Text("Welcome to Minitwit", 
              style: TextStyle(
                fontSize: 48.0,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 100.0),
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

            MaterialButton(
              child: Text("Login"),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () async {
                var user = await API.login(unController.text, pwController.text);
                if (user == null) {
                  print("User is null");
                  return;
                }

                Navigator.push(context, MaterialPageRoute(builder: 
                  (context) => NavigationContainer(
                    body: 
                      PublicPage(currentUser: User(
                        username: unController.text, 
                        password: pwController.text),
                      ),
                    title: "Public Timeline")
                    )
                  );
              },
            ),
            GestureDetector(
              child: Text("Register here",
                style: TextStyle(
                  color: Colors.blue
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
              },
            ),
          ],
        ) 
      ),
    );
  }


}