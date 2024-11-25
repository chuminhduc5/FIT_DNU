import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fit_dnu/core/constants/api_url.dart';
import 'package:fit_dnu/core/network/dio_client.dart';
import 'package:fit_dnu/core/services/grade_service.dart';

import '../../../../service_locator.dart';

class GradeRemoteDataSource extends GradeService {
  @override
  Future<Either> fetchGrade() async {
    try {
      var response = await sl<DioClient>().get(ApiUrl.grade);
      return Right(response.data);
    } on DioException catch (e) {
      return Left(e.response!.data['message']);
    }
  }
}
