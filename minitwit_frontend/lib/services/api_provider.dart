import 'dart:async';
import 'dart:convert' as convert;
import 'dart:core';
import 'package:minitwit_frontend/models/tweet.dart';
import 'package:minitwit_frontend/models/user.dart';

final baseurl = "http://207.154.252.199/";
// final client = Client();

final String _logout = "logout";
final String _login = "login";
final String _register = "register";
final String _publicTimeline = "";
final String _userTimeline = "logout";
final String _tweets = "msgs/"; 
final String _followers = "fllws/";
final String _latest = "latest";

// Future<Response> logout() async {
//   return await client.post("$baseurl$_logout");
// }

// Future<Response> login(String username, String password) async {
//   return client.post("$baseurl$_login",
//     body: { "Username": username, "Password": password });
// }

// Future<Response> register(RegisterUser user) async {
//   return client.post("$baseurl$_register",
//     body: { "username": user.username, "pwd": user.password, "email": user.email});
// }

// Future<Response> fetchTimeLineTest() async {
//   var url = "$baseurl$_publicTimeline";
//   return client.get(url);
// }

// Future<List<Tweet>> fetchPublicTimeline() async {
//   var url = "$baseurl$_publicTimeline";
//   final response = await client.get(url);
//   if (response.statusCode == 200) {
//     var jsonResponse = convert.jsonDecode(response.body);
//     print('Number of books about http: $jsonResponse.');
//     return List<Tweet>();
// } else {
//   print('Request failed with status: ${response.statusCode}.');
//   return List<Tweet>();
// }
//   // Iterable tweets = json.decode(response.body);
//   // return tweets.map((model)=> Tweet.fromJson(model)).toList();
// }

// Future<List<Tweet>> fetchUserTimeline(String username) async {
//   final response = await client.get("$baseurl$username");
//   // Iterable tweets = json.decode(response.body);
//   // return tweets.map((model)=> Tweet.fromJson(model)).toList();
//   return null;
// }

// Future<Response> addTweet(String msg, String username) async {
//   return await client.post(
//     "$baseurl$_tweets$username",
//     body: { "content": msg }
//   );
// }

// Future<Response> addFollower(String username, String follower) async {
//   return await client.post(
//     "$baseurl$_followers$username",
//     body: { "follow": follower, "unfollow": null }
//   );
// }

// Future<Response> unfollow(String username, String unfollower) async {
//   return await client.post(
//     "$baseurl$_followers$username",
//     body: { "follow": null, "unfollow": unfollower }
//   );
// }

// Future<List<User>> fetchFollowers(String username) async {
//   // TODO: Dependency on backend api
// }

