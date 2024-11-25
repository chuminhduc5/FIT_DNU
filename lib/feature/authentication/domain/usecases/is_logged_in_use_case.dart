import 'package:fit_dnu/core/usecases/usecase.dart';
import 'package:fit_dnu/feature/authentication/domain/repositories/auth_repository.dart';
import 'package:fit_dnu/service_locator.dart';

class IsLoggedInUseCase extends UseCase<bool, dynamic> {
  @override
  Future<bool> call({params}) async {
    return await sl<AuthRepository>().isLoggedIn();
  }
}
