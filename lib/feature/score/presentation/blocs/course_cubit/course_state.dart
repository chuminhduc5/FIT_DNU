part of 'course_cubit.dart';

@immutable
abstract class CourseState {}

class CourseInitial extends CourseState {}

class CourseLoading extends CourseState {}

class CourseSuccess extends CourseState {
  final List<CourseEntity> courses;

  CourseSuccess({required this.courses});
}

class CourseFailed extends CourseState {
  final String errorMessage;

  CourseFailed({required this.errorMessage});
}
