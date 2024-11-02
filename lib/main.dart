import 'package:fit_dnu/core/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'feature/authentication/presentation/screens/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInScreen(),
      theme: AppTheme.appTheme,
    );
  }
}
