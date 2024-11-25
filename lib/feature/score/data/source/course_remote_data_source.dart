import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fit_dnu/core/constants/api_url.dart';
import 'package:fit_dnu/core/network/dio_client.dart';
import 'package:fit_dnu/core/services/course_service.dart';
import 'package:fit_dnu/service_locator.dart';

class CourseRemoteDataSource extends CourseService {
  @override
  Future<Either> fetchCourse() async {
    try {
      var response = await sl<DioClient>().get(ApiUrl.course);
      return Right(response.data);
    } on DioException catch (e) {
      return Left(e.response!.data['message']);
    }
  }
}
