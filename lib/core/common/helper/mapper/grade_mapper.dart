import 'package:fit_dnu/feature/Score/data/model/grade_model.dart';
import 'package:fit_dnu/feature/score/domain/entities/grade_entity.dart';

class GradeMapper {
  static GradeEntity toEntity(GradeModel grade) {
    return GradeEntity(
      studentName: grade.studentName,
      courseName: grade.courseName,
      semesterName: grade.semesterName,
      gradeTypeName: grade.gradeTypeName,
      gradeValue: grade.gradeValue,
      gradeDate: grade.gradeDate,
    );
  }
}
