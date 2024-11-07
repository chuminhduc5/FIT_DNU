import 'package:fit_dnu/core/common/helper/navigation/app_navigation.dart';
import 'package:fit_dnu/core/config/theme/app_colors.dart';
import 'package:fit_dnu/feature/home/presentation/screens/schedule_screen.dart';
import 'package:fit_dnu/feature/home/widgets/schedule_widget.dart';
import 'package:fit_dnu/feature/home/widgets/student_information_widget.dart';
import 'package:fit_dnu/feature/profile/presentation/screens/profile_screen.dart';
import 'package:flutter/material.dart';

import '../../widgets/feature_card_widget.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback onTap;

  const HomeScreen({super.key, required this.onTap});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFEFEF),
      appBar: AppBar(
        title: const Text(
          'ĐẠI HỌC ĐẠI NAM',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: AppColors.textWhite),
        ),
        backgroundColor: AppColors.bgOrange,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            InkWell(
              onTap: widget.onTap,
              child: const StudentInformationWidget(),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Các cức năng phổ biến',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textBlack,
                    ),
                  ),
                  Text(
                    'Thay đổi',
                    style: TextStyle(
                      fontSize: 13,
                      color: AppColors.textBlue,
                      decoration: TextDecoration.underline,
                      decorationColor: AppColors.textBlue,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  FeatureCardWidget(
                    icon: Icons.assignment,
                    label: 'Dịch vụ một cửa',
                    color: Colors.blue,
                  ),
                  InkWell(
                    onTap: () {
                      AppNavigator.push(context, ScheduleScreen());
                    },
                    child: FeatureCardWidget(
                      icon: Icons.schedule,
                      label: 'Thời khoá biểu',
                      color: Colors.orange,
                    ),
                  ),
                  FeatureCardWidget(
                    icon: Icons.class_,
                    label: 'Lớp tín chỉ',
                    color: Colors.purple,
                  ),
                  FeatureCardWidget(
                    icon: Icons.grade,
                    label: 'Kết quả học tập',
                    color: Colors.red,
                  ),
                  FeatureCardWidget(
                    icon: Icons.qr_code,
                    label: 'Quét mã QR',
                    color: Colors.green,
                  ),
                  FeatureCardWidget(
                    icon: Icons.more_horiz,
                    label: 'Tiện ích khác',
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: ScheduleWidget(),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tin nổi bật',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textBlack,
                    ),
                  ),
                  Text(
                    'Xem thêm',
                    style: TextStyle(
                      fontSize: 13,
                      color: AppColors.textBlue,
                      decoration: TextDecoration.underline,
                      decorationColor: AppColors.textBlue,
                    ),
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
