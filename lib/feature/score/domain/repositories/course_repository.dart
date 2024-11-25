import 'package:dartz/dartz.dart';

abstract class CourseRepository {
  Future<Either> getCourse();
}
