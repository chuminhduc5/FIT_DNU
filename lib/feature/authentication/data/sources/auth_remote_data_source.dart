import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fit_dnu/core/constants/api_url.dart';
import 'package:fit_dnu/core/error/exceptions.dart';
import 'package:fit_dnu/core/network/dio_client.dart';
import 'package:fit_dnu/core/services/auth_service.dart';
import 'package:fit_dnu/feature/authentication/data/models/auth_response.dart';
import 'package:fit_dnu/feature/authentication/data/models/sign_%E1%BB%89n_req_params.dart';
import 'package:fit_dnu/service_locator.dart';
import 'package:http/http.dart' as http;

// class AuthRemoteDataSource extends AuthService {
//   @override
//   Future<Either> signIn(SignInReqParams params) async {
//     try {
//       var response = await sl<DioClient>().post(
//         ApiUrl.signIn,
//         data: params.toMap(),
//       );
//       print('--------------- ${response.data} -----------------------');
//       return Right(response.data);
//     } on DioException catch (e) {
//       print('---------------- $e --------------------------------');
//       return Left(e.response!.data['message']);
//     }
//   }
// }

class AuthRemoteDataSource extends AuthService {
  @override
  Future<Either> signIn(SignInReqParams params) async {
    try {
      var response = await sl<DioClient>().post(
        ApiUrl.signIn,
        data: params.toMap(),
      );
      return Right(response.data);
    } on DioException catch (e) {
      final errorMessage = e.response != null
          ? e.response!.data['message']
          : 'An unexpected network error occurred';
      return Left(errorMessage);
    }

    //   const url = 'http://localhost:5291/api/v1/account/login';
    //   final uri = Uri.parse(url);
    //
    //   try {
    //     final response = await http.post(uri,
    //         headers: <String, String>{
    //           'Content-Type': 'application/json; charset=UTF-8',
    //         },
    //         body: jsonEncode(<String, dynamic>{
    //           'username': params,
    //           'password': params,
    //         }));
    //
    //     if (response.statusCode == 200) {
    //       final responseBody = jsonDecode(response.body);
    //       return responseBody;
    //     } else {
    //       print('Response status: ${response.statusCode}');
    //       print('Response body: ${response.body}');
    //       throw ServerException(
    //           'Failed to login, status code: ${response.statusCode}');
    //     }
    //   } catch (e) {
    //     print('An error occurred: $e');
    //     throw ServerException('Failed to login');
    //   }
  }
}
