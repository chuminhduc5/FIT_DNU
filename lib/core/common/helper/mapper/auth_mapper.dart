import 'package:fit_dnu/feature/authentication/data/models/auth_response.dart';

import '../../../../feature/authentication/domain/entities/auth_response_entity.dart';

class AuthResponseMapper {
  static AuthResponseEntity toEntity(AuthResponse auth) {
    return AuthResponseEntity(
      username: auth.userName,
      token: auth.token,
    );
  }
}
