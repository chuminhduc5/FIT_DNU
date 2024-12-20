import 'package:fit_dnu/core/common/helper/navigation/app_navigation.dart';
import 'package:fit_dnu/core/config/theme/app_colors.dart';
import 'package:fit_dnu/feature/home/presentation/screens/feature_screen.dart';
import 'package:fit_dnu/feature/home/presentation/widgets/feature_card_widget.dart';
import 'package:fit_dnu/feature/home/presentation/widgets/news_card_widget.dart';
import 'package:fit_dnu/feature/home/presentation/widgets/schedule_widget.dart';
import 'package:fit_dnu/feature/home/presentation/widgets/student_information_widget.dart';
import 'package:fit_dnu/feature/score/presentation/screens/schedule_screen.dart';
import 'package:flutter/material.dart';

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
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Các chức năng phổ biến',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textBlack,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      AppNavigator.push(context, const FeatureScreen());
                    },
                    child: const Text(
                      'Thay đổi',
                      style: TextStyle(
                        fontSize: 13,
                        color: AppColors.textBlue,
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.textBlue,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                childAspectRatio: 2.4,
                children: [
                  FeatureCardWidget(
                    onPressed: () {},
                    icon: Icons.assignment,
                    label: 'Dịch vụ một cửa',
                    color: Colors.blue,
                  ),
                  FeatureCardWidget(
                    onPressed: () {
                      AppNavigator.push(context, const FeatureScreen());
                    },
                    icon: Icons.schedule,
                    label: 'Thời khoá biểu',
                    color: Colors.orange,
                  ),
                  FeatureCardWidget(
                    onPressed: () {},
                    icon: Icons.class_,
                    label: 'Lớp tín chỉ',
                    color: Colors.purple,
                  ),
                  FeatureCardWidget(
                    onPressed: () {},
                    icon: Icons.grade,
                    label: 'Kết quả học tập',
                    color: Colors.red,
                  ),
                  // const FeatureCardWidget(
                  //   icon: Icons.qr_code,
                  //   label: 'Quét mã QR',
                  //   color: Colors.green,
                  // ),
                  // const FeatureCardWidget(
                  //   icon: Icons.more_horiz,
                  //   label: 'Tiện ích khác',
                  //   color: Colors.grey,
                  // ),
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
            const SizedBox(height: 5),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  NewsCardWidget(
                    description:
                        'Thông báo: Thời gian nghỉ tết âm lịch 2025 trường Đại học Đại Nam',
                    imagePath: '',
                  ),
                  SizedBox(width: 10),
                  NewsCardWidget(
                    description:
                        'Thông báo: V/v Triển khai thử nghiệm ứng dụng FIT-DNU dành cho toàn bộ sinh viên toàn trường',
                    imagePath: '',
                  ),
                  SizedBox(width: 10),
                  NewsCardWidget(
                    description:
                        'Thông báo: Các sự kiện sắp tới trong năm 2025 của trường Đại học Đại Nam',
                    imagePath: '',
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
