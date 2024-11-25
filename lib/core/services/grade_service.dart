import 'package:dartz/dartz.dart';

abstract class GradeService {
  Future<Either> fetchGrade();
}
