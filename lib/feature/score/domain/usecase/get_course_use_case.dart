import 'package:dartz/dartz.dart';
import 'package:fit_dnu/core/usecases/usecase.dart';
import 'package:fit_dnu/feature/score/domain/repositories/course_repository.dart';

import '../../../../service_locator.dart';

class GetCourseUseCase extends UseCase<Either, dynamic> {
  @override
  Future<Either> call({params}) async {
    return await sl<CourseRepository>().getCourse();
  }
}