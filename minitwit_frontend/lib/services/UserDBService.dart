
import 'dart:convert';
import 'dart:io';
import 'strings'

import 'package:minitwit_frontend/models/user.dart';

final userdb = File("users.db");

class UserDBService {
  Future AddUser(RegisterUser user) async {
    print("save user");
    await userdb.writeAsString(user.username, mode: FileMode.writeOnlyAppend, encoding: utf8);
  }

  Future<User> GetUser(String username) async {
    var results = await userdb.readAsString();
    if (results.contains(username)) 
      return User(username: username);
    return null;
  }
}