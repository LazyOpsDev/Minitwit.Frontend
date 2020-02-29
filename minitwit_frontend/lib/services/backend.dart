import 'package:http/http.dart' as http;
import 'package:minitwit_frontend/models/tweet.dart';
import 'dart:convert' as convert;

final baseurl = "http://localhost/";

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