import 'package:fit_dnu/core/common/helper/navigation/app_navigation.dart';
import 'package:fit_dnu/core/common/widgets/option/option_basic.dart';
import 'package:fit_dnu/core/config/theme/app_colors.dart';
import 'package:fit_dnu/feature/utilities/presentation/screens/intro_dnu_screen.dart';
import 'package:flutter/material.dart';

class UtilScreen extends StatefulWidget {
  const UtilScreen({super.key});

  @override
  State<UtilScreen> createState() => _UtilScreenState();
}

class _UtilScreenState extends State<UtilScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFEFEFEF),
        appBar: AppBar(
          title: const Text(
            'Tiện ích số',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: AppColors.textWhite),
          ),
          backgroundColor: AppColors.bgOrange,
          iconTheme: const IconThemeData(color: AppColors.bgWhite),
        ),
        body: Column(
          children: [
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
                      icon: Icons.newspaper,
                      title: 'Tin tức',
                      onTap: () {},
                      color: Colors.blue,
                    ),
                    OptionBasic(
                      icon: Icons.school,
                      title: 'Giới thiệu về DNU',
                      onTap: () {
                        AppNavigator.push(context, IntroDnuScreen());
                      },
                      color: Colors.red,
                    ),
                    OptionBasic(
                      icon: Icons.menu_book_rounded,
                      title: 'Văn bản hướng dẫn',
                      onTap: () {},
                      color: Colors.orange,
                    ),
                    OptionBasic(
                      icon: Icons.design_services_outlined,
                      title: 'Dịch vụ một cửa',
                      onTap: () {},
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
            ),
            // const SizedBox(
            //   height: 15,
            // ),
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
                      title: 'Phản hồi',
                      onTap: () {},
                      color: Colors.orange,
                    ),
                    OptionBasic(
                      icon: Icons.calendar_today,
                      title: 'Khảo sát',
                      onTap: () {},
                      color: Colors.purple,
                    ),
                    OptionBasic(
                      icon: Icons.feedback,
                      title: 'Khai báo sức khỏe',
                      onTap: () {},
                      color: Colors.blue,
                    ),
                    OptionBasic(
                      icon: Icons.fingerprint,
                      title: 'Quét mã QR',
                      onTap: () {},
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
