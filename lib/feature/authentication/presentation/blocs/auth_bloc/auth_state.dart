part of 'auth_bloc.dart';

@immutable
abstract class AuthState extends Equatable {
  @override
  List<Object?> get props => [];
}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {
  final Map<String, dynamic> response;

  AuthSuccess({
    required this.response,
  });

  @override
  List<Object?> get props => [response];
}

class AuthFailed extends AuthState {
  final String message;

  AuthFailed(this.message);

  @override
  List<Object?> get props => [message];
}

class AuthSignOut extends AuthState {}
