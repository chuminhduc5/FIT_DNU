part of 'grade_cubit.dart';

@immutable
abstract class GradeState {}

class GradeInitial extends GradeState {}

class GradeLoading extends GradeState {}

class GradeSuccess extends GradeState {
  final List<GradeEntity> grades;

  GradeSuccess({required this.grades});
}

class GradeFailed extends GradeState {
  final String errorMessage;

  GradeFailed({required this.errorMessage});
}
