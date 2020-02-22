import 'dart:async';
import 'dart:convert';
import 'dart:core';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:minitwit_frontend/models/tweet.dart';
import 'package:minitwit_frontend/models/user.dart';

final baseurl = "http://localhost:8080/api/";
final client = http.Client();

final String logout = "logout";
final String login = "login";
final String register = "register";
final String publicTimeline = "";
final String userTimeline = "logout";
final String tweets = "msgs/"; 
final String followers = "fllws/";

class ApiProvider {

  Future<Response> logout() async {
    return await client.post("$baseurl$logout");
  }

  Future<Response> login(String username, String password) async {
    return client.post("$baseurl$login",
      body: { "Username": username, "Password": password });
  }

  Future<Response> register(RegisterUser user) async {
    return client.post("$baseurl$register",
      body: { "username": user.username, "pwd": user.password, "email": user.email});
  }

  Future<List<Tweet>> fetchPublicTimeline() async {
    final response = await client.get("$baseurl$publicTimeline");
    Iterable tweets = json.decode(response.body);
    return tweets.map((model)=> Tweet.fromJson(model)).toList();
  }

  Future<List<Tweet>> fetchUserTimeline(String username) async {
    final response = await client.get("$baseurl$username");
    Iterable tweets = json.decode(response.body);
    return tweets.map((model)=> Tweet.fromJson(model)).toList();
  }

  Future<Response> addTweet(String msg, String username) async {
    return await client.post(
      "$baseurl$tweets$username",
      body: { "content": msg }
    );
  }

  Future<Response> addFollower(String username, String follower) async {
    return await client.post(
      "$baseurl$followers$username",
      body: { "follow": follower, "unfollow": null }
    );
  }

  Future<Response> unfollow(String username, String unfollower) async {
    return await client.post(
      "$baseurl$followers$username",
      body: { "follow": null, "unfollow": unfollower }
    );
  }

  Future<List<User>> fetchFollowers(String username) async {
    // TODO: Dependency on backend api
  }


}
