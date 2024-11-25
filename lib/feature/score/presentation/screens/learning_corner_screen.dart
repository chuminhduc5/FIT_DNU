import 'package:fit_dnu/core/common/helper/navigation/app_navigation.dart';
import 'package:fit_dnu/core/common/widgets/option/option_basic.dart';
import 'package:fit_dnu/core/config/theme/app_colors.dart';
import 'package:fit_dnu/feature/score/presentation/screens/learning_result_screen.dart';
import 'package:fit_dnu/feature/score/presentation/screens/result_screen.dart';
import 'package:fit_dnu/feature/score/presentation/screens/schedule_screen.dart';
import 'package:flutter/material.dart';

class LearningCornerScreen extends StatefulWidget {
  const LearningCornerScreen({super.key});

  @override
  State<LearningCornerScreen> createState() => _LearningCornerScreenState();
}

class _LearningCornerScreenState extends State<LearningCornerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFEFEF),
      appBar: AppBar(
        title: const Text(
          'Góc học tập',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: AppColors.textWhite),
        ),
        backgroundColor: AppColors.bgOrange,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(15, 15, 15, 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.bgWhite,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: ListView(
                shrinkWrap: true,
                children: [
                  OptionBasic(
                    icon: Icons.schedule,
                    title: 'Thời gian biểu',
                    onTap: () {
                      AppNavigator.push(context, ScheduleScreen());
                    },
                    color: Colors.blue,
                  ),
                  OptionBasic(
                    icon: Icons.calendar_today,
                    title: 'Sự kiện',
                    onTap: () {},
                    color: Colors.orange,
                  ),
                  OptionBasic(
                    icon: Icons.school,
                    title: 'Kết quả học tập',
                    onTap: () {
                      AppNavigator.push(context, const ResultScreen());
                    },
                    color: Colors.red,
                  ),
                  OptionBasic(
                    icon: Icons.class_,
                    title: 'Lớp tín chỉ',
                    onTap: () {},
                    color: Colors.green,
                  ),
                  OptionBasic(
                    icon: Icons.account_circle,
                    title: 'Lớp hành chính',
                    onTap: () {},
                    color: Colors.purple,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
