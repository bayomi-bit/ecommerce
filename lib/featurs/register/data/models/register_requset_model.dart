class RegisterRequestModel {
  final String firstName;
  final String email;
  final String password;
  RegisterRequestModel(this.firstName, this.email, this.password);
  Map<String, dynamic> toJson() => {
    'firstName': firstName,
    'email': email,
    'password': password,
  };
}