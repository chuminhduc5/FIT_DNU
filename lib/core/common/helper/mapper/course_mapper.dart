import 'package:fit_dnu/feature/score/data/model/cource_model.dart';
import 'package:fit_dnu/feature/score/domain/entities/course_entity.dart';

class CourseMapper {
  static CourseEntity toEntity(CourseModel course) {
    return CourseEntity(
      courseId: course.courseId,
      courseName: course.courseName,
      description: course.description,
      credits: course.credits,
      major: course.major,
    );
  }
}
