class AuthResponse {
  final String userName;
  final String token;

  AuthResponse({required this.userName, required this.token});

  factory AuthResponse.fromJson(Map<String, dynamic> map) {
    return AuthResponse(
      userName: map['userName'],
      token: map['token'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'username': userName,
      'token': token,
    };
  }
}
