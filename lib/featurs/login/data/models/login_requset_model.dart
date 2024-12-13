class LoginRequestModel {
  final String userName;
  final String password;
  final int expiresInMins ;

  LoginRequestModel({required this.userName,required this.password,this.expiresInMins=60});
  Map<String, dynamic> toJson() {
    return {
      'username': userName,
      'password': password,
      'expiresInMins': expiresInMins,
    };

}}