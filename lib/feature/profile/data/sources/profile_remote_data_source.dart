import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fit_dnu/core/constants/api_url.dart';
import 'package:fit_dnu/core/network/dio_client.dart';
import 'package:fit_dnu/core/services/profile_service.dart';
import 'package:fit_dnu/service_locator.dart';

class ProfileRemoteDataSource extends ProfileService {
  @override
  Future<Either> fetchProfile() async {
    try {
      var response = await sl<DioClient>().get(ApiUrl.profile);
      print("Dữ liệu trả về: $response");
      return Right(response.data);
    } on DioException catch (e) {
      return Left(e.response!.data['message']);
    }
  }
}
