import 'package:equatable/equatable.dart';

class CourseEntity extends Equatable {
  final int courseId;
  final String courseName;
  final String description;
  final int credits;
  final String major;

  const CourseEntity({
    required this.courseId,
    required this.courseName,
    required this.description,
    required this.credits,
    required this.major,
  });

  @override
  List<Object?> get props =>
      [courseId, courseName, description, credits, major];
}
