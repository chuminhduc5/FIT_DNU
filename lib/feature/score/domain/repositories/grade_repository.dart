import 'package:dartz/dartz.dart';

abstract class GradeRepository {
  Future<Either> getGrade();
}
