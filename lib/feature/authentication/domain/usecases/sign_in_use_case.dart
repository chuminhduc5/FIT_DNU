import 'package:dartz/dartz.dart';
import 'package:fit_dnu/core/usecases/usecase.dart';
import 'package:fit_dnu/feature/authentication/data/models/sign_%E1%BB%89n_req_params.dart';
import 'package:fit_dnu/feature/authentication/domain/repositories/auth_repository.dart';
import 'package:fit_dnu/service_locator.dart';

class SignInUseCase extends UseCase<Either, SignInReqParams> {
  @override
  Future<Either> call({SignInReqParams? params}) async {
    return await sl<AuthRepository>().signIn(params!);
  }
}
