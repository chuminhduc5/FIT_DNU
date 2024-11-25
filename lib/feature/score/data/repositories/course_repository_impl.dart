import 'package:dartz/dartz.dart';
import 'package:fit_dnu/core/common/helper/mapper/course_mapper.dart';
import 'package:fit_dnu/core/services/course_service.dart';
import 'package:fit_dnu/feature/score/domain/repositories/course_repository.dart';
import 'package:fit_dnu/service_locator.dart';

import '../model/cource_model.dart';

class CourseRepositoryImpl implements CourseRepository {
  @override
  Future<Either> getCourse() async {
    var data = await sl<CourseService>().fetchCourse();
    return data.fold(
      (error) {
        return Left(error);
      },
      (data) {
        var courses = List.from(data['data'])
            .map((item) => CourseMapper.toEntity(CourseModel.fromJson(item)))
            .toList();
        return Right(courses);
      },
    );
  }
}
