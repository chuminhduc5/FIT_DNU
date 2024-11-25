import 'package:dartz/dartz.dart';
import 'package:fit_dnu/core/usecases/usecase.dart';
import 'package:fit_dnu/feature/profile/domain/repositories/profile_repository.dart';
import 'package:fit_dnu/service_locator.dart';

class GetProfileUseCase extends UseCase<Either, String> {
  @override
  Future<Either> call({String? params}) async {
    return await sl<ProfileRepository>().getProfile();
  }
}