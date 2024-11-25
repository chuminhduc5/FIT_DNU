import 'package:fit_dnu/core/usecases/usecase.dart';
import 'package:fit_dnu/feature/authentication/domain/repositories/auth_repository.dart';
import 'package:fit_dnu/service_locator.dart';

class SignOutUseCase extends UseCase<void, dynamic> {
  @override
  Future<void> call({params}) async {
    return await sl<AuthRepository>().signOut();
  }
}
