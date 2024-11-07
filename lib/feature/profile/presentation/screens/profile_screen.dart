import 'package:fit_dnu/core/common/helper/navigation/app_navigation.dart';
import 'package:fit_dnu/core/common/widgets/option/option_basic.dart';
import 'package:fit_dnu/core/config/theme/app_colors.dart';
import 'package:fit_dnu/feature/profile/presentation/screens/student_information_screen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          Container(
              color: AppColors.bgWhite,
              child: Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(height: 150, color: AppColors.bgOrange),
                      Positioned(
                        top: 80,
                        left: MediaQuery.of(context).size.width / 2 - 50,
                        child: const CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage('assets/images/dainam.jpg'),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 60), // Space for profile picture
                  const Text(
                    'Chử Minh Đức',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'MSV: 1571020064    Lớp: CNTT 15-05',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 20),
                ],
              )),
          Flexible(
            child: Container(
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
                    icon: Icons.person,
                    title: 'Thông tin cá nhân',
                    onTap: () {
                      AppNavigator.push(
                          context, const StudentInformationScreen());
                    },
                    color: Colors.blue,
                  ),
                  OptionBasic(
                    icon: Icons.calendar_today,
                    title: 'Lịch thi, sự kiện sắp tới',
                    onTap: () {
                      // Handle tap
                    },
                    color: Colors.red,
                  ),
                  OptionBasic(
                    icon: Icons.feedback,
                    title: 'Đang chờ phản hồi',
                    onTap: () {
                      // Handle tap
                    },
                    color: Colors.orange,
                  ),
                  OptionBasic(
                    icon: Icons.fingerprint,
                    title: 'Cài đặt vân tay/Face ID',
                    onTap: () {
                      // Handle tap
                    },
                    color: Colors.red,
                  ),
                  OptionBasic(
                    icon: Icons.people,
                    title: 'Mạng xã hội DNU',
                    onTap: () {
                      // Handle tap
                    },
                    color: Colors.green,
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(15, 0, 15, 10),
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
            child: OptionBasic(
              icon: Icons.logout,
              title: 'Đăng xuất',
              onTap: () {
                // Handle tap
              },
              color: Colors.purple,
            ),
          ),
        ],
      ),
    );
  }
}
