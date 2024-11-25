import 'package:dartz/dartz.dart';
import 'package:fit_dnu/core/common/helper/mapper/grade_mapper.dart';
import 'package:fit_dnu/core/services/grade_service.dart';
import 'package:fit_dnu/feature/score/domain/repositories/grade_repository.dart';
import '../../../../service_locator.dart';
import 'package:fit_dnu/feature/Score/data/model/grade_model.dart';

class GradeRepositoryImpl implements GradeRepository {
  @override
  Future<Either> getGrade() async {
    var data = await sl<GradeService>().fetchGrade();
    return data.fold(
      (error) {
        return Left(error);
      },
      (data) {
        var grades = List.from(data)
            .map((item) => GradeMapper.toEntity(GradeModel.fromJson(item)))
            .toList();
        return Right(grades);
      },
    );
  }
}
