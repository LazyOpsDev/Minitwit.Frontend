
class Tweet {

  final String msg;
  final String author;
  // final DateTime publishedDate;

  Tweet({
    this.msg,
    // this.publishedDate,
    this.author
  });

  factory Tweet.fromJson(Map<String,dynamic> json) {
    return Tweet(
      msg: json['content'],
      author: json['userId'],
      // publishedDate: json['publishedTime'],
    );
  }
}
  // @override
  // Widget build(BuildContext context) {
  //   return 
  //     Card(
  //       color: Colors.blue,
  //       child: Container(
  //         height: 50.0,
  //         child: Center(child: Text("Author: $author | Msg: $msg", style: TextStyle(color: Colors.white), textAlign: TextAlign.center))),
  //     );
  // }
