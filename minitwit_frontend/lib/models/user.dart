
class RegisterUser {
  final String id;
  final String username;
  final String password;
  final String email;

  const RegisterUser({
    this.id,
    this.username,
    this.password,
    this.email,
  });
}

class User {
  String cookie;
  final String username;
  final String password;  

  User({
    this.username,
    this.password,
  });
}