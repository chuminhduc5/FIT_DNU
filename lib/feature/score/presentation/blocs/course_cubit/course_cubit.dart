import 'package:bloc/bloc.dart';
import 'package:fit_dnu/feature/score/domain/usecase/get_course_use_case.dart';
import 'package:meta/meta.dart';

import '../../../../../service_locator.dart';
import '../../../domain/entities/course_entity.dart';

part 'course_state.dart';

class CourseCubit extends Cubit<CourseState> {
  CourseCubit() : super(CourseInitial());

  void getCourse() async {
    var courses = await sl<GetCourseUseCase>().call();
    courses.fold(
      (error) {
        emit(CourseFailed(errorMessage: error));
      },
      (data) {
        emit(CourseSuccess(courses: data));
      },
    );
  }
}
