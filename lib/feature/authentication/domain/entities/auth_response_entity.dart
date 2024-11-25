import 'package:equatable/equatable.dart';

class AuthResponseEntity extends Equatable {
  final String username;
  final String token;

  const AuthResponseEntity({required this.username, required this.token});

  @override
  List<Object?> get props => [username, token];
}
