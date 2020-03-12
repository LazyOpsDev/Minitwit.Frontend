import 'package:http/http.dart' as http;
import 'package:minitwit_frontend/models/tweet.dart';
import 'dart:convert' as convert;

import 'package:minitwit_frontend/models/user.dart';

final baseurl = "http://207.154.252.199/";

final String _logout = "logout";
final String _login = "login";
final String _register = "register";
final String _publicTimeline = "";
final String _userTimeline = "logout";
final String _tweets = "msgs/"; 
final String _followers = "fllws/";
final String _latest = "latest";

Future<List<Tweet>> getPublicTimeline() async {
  var resp = await http.get(baseurl);
  if (resp.statusCode != 200) 
    return null;
  
  var tweets = convert.jsonDecode(resp.body);
  var tweetList = List<Tweet>();
  for(var t in tweets) {
    var tweet = Tweet.fromJson(t);
    tweetList.add(tweet);
  }

  return tweetList;
}

Future<List<Tweet>> getUserTimeline(User user) async {
  if (user == null)
    return null;
  var resp = await http.get("$baseurl${user.username}");
  if (resp.statusCode != 200) 
    return null;
  
  var tweets = convert.jsonDecode(resp.body);
  var tweetList = List<Tweet>();
  for(var t in tweets) {
    var tweet = Tweet.fromJson(t);
    tweetList.add(tweet);
  }

  return tweetList;
}


Future<User> login(String username, String password) async {
  // var resp = await http.post("$baseurl$_login", 
  //   body: { "Username": username, "Password": password }
  // );
  // if (resp.statusCode != 200) 
  //   return null;
  
  // var user = convert.jsonDecode(resp.body);
  // return User(username: user.Username);

  return User(username: username, password: password);
}

Future<User> register(RegisterUser register) async {
  var resp = await http.post("$baseurl$_register", 
    body: { 
      "username": register.username, 
      "pwd": register.password,  
      "email": register.email
      }
  );

  if (resp.statusCode != 204) {
    print(resp.statusCode);
    return null;
  }
  
  var user = User(username: register.username, password: register.password);
  user.cookie = "mysecretcookie"; // TODO: Fix this somehow?
  return user;
}

// Future<bool> tweet(String username, String msg) async {
//   var resp = await http.post("$baseurl$_tweets$username", 
//     body: { 
//       "username": register.username, 
//       "pwd": register.password,  
//       "email": register.email
//       }
//   );

//   if (resp.statusCode != 204) {
//     return false;
//   }
//   return true;
  
// }