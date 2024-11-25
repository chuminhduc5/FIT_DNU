import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fit_dnu/feature/authentication/data/models/sign_%E1%BB%89n_req_params.dart';
import 'package:fit_dnu/feature/authentication/domain/usecases/sign_in_use_case.dart';
import 'package:fit_dnu/feature/authentication/domain/usecases/sign_out_use_case.dart';
import 'package:fit_dnu/service_locator.dart';
import 'package:flutter/cupertino.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthSignInRequest>(_onSignInRequest);
    on<AuthSignOutRequested>(_onAuthSignOutRequested);
  }

  Future<void> _onSignInRequest(
    AuthSignInRequest event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());
    final result = await sl<SignInUseCase>().call(params: event.params);
    result.fold(
      (failure) {
        emit(AuthFailed(failure.toString()));
      },
      (data) {
        emit(AuthSuccess(response: data));
      },
    );
  }

  Future<void> _onAuthSignOutRequested(
    AuthSignOutRequested event,
    Emitter<AuthState> emit,
  ) async {
    await sl<SignOutUseCase>().call();
    emit(AuthSignOut());
  }
}
