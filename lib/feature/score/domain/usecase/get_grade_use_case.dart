import 'package:dartz/dartz.dart';
import 'package:fit_dnu/core/usecases/usecase.dart';

import '../../../../service_locator.dart';
import '../repositories/grade_repository.dart';

class GetGradeUseCase extends UseCase<Either, dynamic> {
  @override
  Future<Either> call({params}) async {
    return await sl<GradeRepository>().getGrade();
  }
}
