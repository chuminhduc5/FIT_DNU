import 'package:equatable/equatable.dart';

class GradeEntity extends Equatable {
  final String studentName;
  final String courseName;
  final String semesterName;
  final String gradeTypeName;
  final double gradeValue;
  final DateTime gradeDate;

  GradeEntity({
    required this.studentName,
    required this.courseName,
    required this.semesterName,
    required this.gradeTypeName,
    required this.gradeValue,
    required this.gradeDate,
  });

  @override
  List<Object?> get props => [
        studentName,
        courseName,
        semesterName,
        gradeTypeName,
        gradeValue,
        gradeDate,
      ];
}
