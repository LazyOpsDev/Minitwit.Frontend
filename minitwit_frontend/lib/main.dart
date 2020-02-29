import 'dart:io';

import 'package:flutter/material.dart';
import 'pages/login.dart';
// import 'dart:convert' as convert;
// import 'package:http/http.dart' as http;

import 'services/api_provider.dart';

void mainAsync() async {
  // var url = 'https://www.googleapis.com/books/v1/volumes?q={http}';

  // // Await the http get response, then decode the json-formatted response.
  // var response = await http.get(url);
  // if (response.statusCode == 200) {
  //   var jsonResponse = convert.jsonDecode(response.body);
  //   var itemCount = jsonResponse['totalItems'];
  //   print('Number of books about http: $itemCount.');
  // } else {
  //   print('Request failed with status: ${response.statusCode}.');
  // }


  // Await the http get response, then decode the json-formatted response.
  // var response2 = await http.get("http://207.154.252.199");
  // if (response2.statusCode == 200) {
  //   var jsonResponse = convert.jsonDecode(response2.body);
  //   var itemCount = jsonResponse['totalItems'];
  //   print('Number of books about http: $itemCount.');
  // } else {
  //   print('Request failed with status: ${response2.statusCode}.');
  // }

  var client = HttpClient();
  final url =
      Uri.parse('http://207.154.252.199:80');
  var request = await client.getUrl(url);
  var response = await request.close();
  print('Got response');
  await response.drain();
  print('Done');
  client.close();

}

void main() {
  mainAsync();
  runApp(AppComponent());
}

class AppComponent extends StatefulWidget {
  @override
  State createState() {
    return AppComponentState();
  }
}

class AppComponentState extends State<AppComponent> {

  @override
  Widget build(BuildContext context) {
    final app = MaterialApp(
      title: 'Minitwit',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
    return app;
  }
}