import 'package:dartz/dartz.dart';
import 'package:fit_dnu/feature/authentication/data/models/sign_%E1%BB%89n_req_params.dart';

abstract class AuthService {
  Future<Either> signIn(SignInReqParams params);
}
