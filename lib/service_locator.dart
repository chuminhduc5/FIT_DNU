import 'package:fit_dnu/core/network/dio_client.dart';
import 'package:fit_dnu/core/services/auth_service.dart';
import 'package:fit_dnu/core/services/course_service.dart';
import 'package:fit_dnu/core/services/grade_service.dart';
import 'package:fit_dnu/core/services/profile_service.dart';
import 'package:fit_dnu/feature/authentication/data/repository/auth_repository_impl.dart';
import 'package:fit_dnu/feature/authentication/data/sources/auth_remote_data_source.dart';
import 'package:fit_dnu/feature/authentication/domain/repositories/auth_repository.dart';
import 'package:fit_dnu/feature/authentication/domain/usecases/is_logged_in_use_case.dart';
import 'package:fit_dnu/feature/authentication/domain/usecases/sign_in_use_case.dart';
import 'package:fit_dnu/feature/authentication/domain/usecases/sign_out_use_case.dart';
import 'package:fit_dnu/feature/profile/data/repository/profile_repository_impl.dart';
import 'package:fit_dnu/feature/profile/data/sources/profile_remote_data_source.dart';
import 'package:fit_dnu/feature/profile/domain/repositories/profile_repository.dart';
import 'package:fit_dnu/feature/profile/domain/usecases/get_profile_use_case.dart';
import 'package:fit_dnu/feature/score/data/repositories/grade_repository_impl.dart';
import 'package:fit_dnu/feature/score/data/source/course_remote_data_source.dart';
import 'package:fit_dnu/feature/score/data/source/grade_remote_data_source.dart';
import 'package:fit_dnu/feature/score/domain/repositories/course_repository.dart';
import 'package:fit_dnu/feature/score/domain/repositories/grade_repository.dart';
import 'package:fit_dnu/feature/score/domain/usecase/get_course_use_case.dart';
import 'package:fit_dnu/feature/score/domain/usecase/get_grade_use_case.dart';
import 'package:get_it/get_it.dart';

import 'feature/score/data/repositories/course_repository_impl.dart';

final sl = GetIt.instance;

void setupServiceLocator() {
  sl.registerSingleton<DioClient>(DioClient());

  // Service
  sl.registerSingleton<AuthService>(AuthRemoteDataSource());
  sl.registerSingleton<ProfileService>(ProfileRemoteDataSource());
  sl.registerSingleton<CourseService>(CourseRemoteDataSource());
  sl.registerSingleton<GradeService>(GradeRemoteDataSource());

  // Repository
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());
  sl.registerSingleton<ProfileRepository>(ProfileRepositoryImpl());
  sl.registerSingleton<CourseRepository>(CourseRepositoryImpl());
  sl.registerSingleton<GradeRepository>(GradeRepositoryImpl());

  // Usecases
  sl.registerSingleton<SignInUseCase>(SignInUseCase());
  sl.registerSingleton<SignOutUseCase>(SignOutUseCase());
  sl.registerSingleton<IsLoggedInUseCase>(IsLoggedInUseCase());
  sl.registerSingleton<GetProfileUseCase>(GetProfileUseCase());
  sl.registerSingleton<GetCourseUseCase>(GetCourseUseCase());
  sl.registerSingleton<GetGradeUseCase>(GetGradeUseCase());
}
