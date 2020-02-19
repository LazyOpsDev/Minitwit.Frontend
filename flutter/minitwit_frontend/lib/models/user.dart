
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
  final String id;
  final String username;
  final String email;

  const User({
    this.id,
    this.username,
    this.email,
  });
}