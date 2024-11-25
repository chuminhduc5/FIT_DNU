import 'package:bloc/bloc.dart';
import 'package:fit_dnu/feature/score/domain/usecase/get_grade_use_case.dart';
import 'package:fit_dnu/service_locator.dart';
import 'package:meta/meta.dart';

import '../../../domain/entities/grade_entity.dart';

part 'grade_state.dart';

class GradeCubit extends Cubit<GradeState> {
  GradeCubit() : super(GradeInitial());

  void getGrade() async {
    var grades = await sl<GetGradeUseCase>().call();
    grades.fold(
      (error) {
        emit(GradeFailed(errorMessage: error));
      },
      (data) {
        emit(GradeSuccess(grades: data));
      },
    );
  }
}
