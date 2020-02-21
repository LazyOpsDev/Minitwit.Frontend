
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
  final String username;
  final String password;  

  const User({
    this.username,
    this.password,
  });
}