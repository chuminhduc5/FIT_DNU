import 'package:fit_dnu/app_view.dart';
import 'package:fit_dnu/feature/authentication/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:fit_dnu/feature/profile/presentation/blocs/profile_bloc/profile_bloc.dart';
import 'package:fit_dnu/feature/score/presentation/blocs/course_cubit/course_cubit.dart';
import 'package:fit_dnu/feature/score/presentation/blocs/grade_cubit/grade_cubit.dart';
import 'package:fit_dnu/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'feature/authentication/presentation/screens/sign_in_screen.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await dotenv.load();
//   setupServiceLocator();
//   runApp(const MyApp());
// }

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthBloc()),
        BlocProvider(
            create: (context) => ProfileBloc()..add(FetchProfileRequest())),
        BlocProvider(create: (context) => CourseCubit()..getCourse()),
        BlocProvider(create: (context) => GradeCubit()..getGrade()),
      ],
      child: const MaterialApp(
        initialRoute: '/',
        //onGenerateRoute: AppRoutes.generateRoute,
        home: SignInScreen(),
        title: 'Hacom',
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
