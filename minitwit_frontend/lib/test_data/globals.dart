import 'package:minitwit_frontend/models/tweet.dart';

final publicTweets = [
    Tweet(author: "John doe", msg: "Hello I am John Doe"),
    Tweet(author: "Bob", msg: "I like people who are called Alice"),
    Tweet(author: "Alice", msg: "How do I establish secure communication?"),
    Tweet(author: "Mallory", msg: "<script>alert('mwuhahaha')</script>"),
    Tweet(author: "Oracle", msg: "I am god."),
    Tweet(author: "123", msg: "I am 123, I am smart"),
  ];

Iterable<Tweet> publicTweetsLong() sync* {
  int i = 1;
  while (i < 100) {
    yield publicTweets.first;
    i++;
  }
} 

final privateTweets = [
    Tweet(author: "123", msg: "I am 123, I am smart"),
];