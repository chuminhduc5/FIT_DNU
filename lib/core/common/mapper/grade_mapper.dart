

import 'package:fit_dnu/feature/Score/data/model/grade_model.dart';

import '../../../feature/score/domain/grade_entity.dart';

class GradeMapper {
  static GradeEntity toEntity(GradeModel score) {
    return GradeEntity(
      id: score.id,
      studentName: score.studentName,
      courseName: score.courseName,
      semesterName: score.semesterName,
      gradeTypeName: score.gradeTypeName,
      gradeValue: score.gradeValue,
      gradeDate: score.gradeDate,
    );
  }

  // Chuyển từ GradeEntity sang GradeModel
  static GradeModel toModel(GradeEntity entity) {
    return GradeModel(
      id: entity.id,
      studentName: entity.studentName,
      courseName: entity.courseName,
      semesterName: entity.semesterName,
      gradeTypeName: entity.gradeTypeName,
      gradeValue: entity.gradeValue,
      gradeDate: entity.gradeDate,
    );
  }
}
