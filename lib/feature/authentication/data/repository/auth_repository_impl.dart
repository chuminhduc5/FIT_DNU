import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:fit_dnu/core/common/helper/mapper/auth_mapper.dart';
import 'package:fit_dnu/core/services/auth_service.dart';
import 'package:fit_dnu/feature/authentication/data/models/auth_response.dart';
import 'package:fit_dnu/feature/authentication/data/models/sign_%E1%BB%89n_req_params.dart';
import 'package:fit_dnu/feature/authentication/domain/repositories/auth_repository.dart';
import 'package:fit_dnu/service_locator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<Map<String, dynamic>?> getUserInfo() {
    // TODO: implement getUserInfo
    throw UnimplementedError();
  }

  @override
  Future<bool> isLoggedIn() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    var token = pref.getString('token');
    if (token == null) {
      return false;
    } else {
      return true;
    }
  }

  @override
  Future<Either> signIn(SignInReqParams params) async {
    var data = await sl<AuthService>().signIn(params);
    return data.fold(
          (error) {
        return Left(error);
      },
          (data) async {
        // final SharedPreferences pref = await SharedPreferences.getInstance();
        // final token = data['token'];
        // await pref.setString('token', token);
        // return Right(data);

        if (data != null) {
          var authResponseModel = AuthResponse.fromJson(data);
          var authResponse = AuthResponseMapper.toEntity(authResponseModel);

          if (authResponse.token.isNotEmpty) {
            final SharedPreferences pref = await SharedPreferences
                .getInstance();
            pref.setString('token', authResponse.token);
            pref.setString('authResponse',
                jsonEncode(authResponseModel.toMap())); // Store as JSON string

            return Right(
                authResponseModel.toMap()); // Return Map<String, dynamic>
          } else {
            String errorMessage = data['message'] ??
                "Đăng nhập không thành công.";
            return Left(errorMessage);
          }
        } else {
          return const Left("Đăng nhập không thành công. Không có dữ liệu.");
        }
      },
    );
  }

  @override
  Future<void> signOut() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.clear();
  }
}
