part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class AuthSignInRequest extends AuthEvent {
  final SignInReqParams params;

  AuthSignInRequest({required this.params});

  @override
  List<Object?> get props => [params];
}

class AuthSignOutRequested extends AuthEvent {}
