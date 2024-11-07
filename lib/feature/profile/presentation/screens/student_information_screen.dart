import 'package:flutter/material.dart';

import '../../../../core/config/theme/app_colors.dart';

class StudentInformationScreen extends StatefulWidget {
  const StudentInformationScreen({super.key});

  @override
  State<StudentInformationScreen> createState() =>
      _StudentInformationScreenState();
}

class _StudentInformationScreenState extends State<StudentInformationScreen> {
  String dropdownValue = 'Thông Tin Sinh Viên';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFEFEF),
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          'Thông tin sinh viên',
          style: TextStyle(color: AppColors.textWhite),
        ),
        iconTheme: const IconThemeData(color: AppColors.bgWhite),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // University Logo
              // Image.asset(
              //   "assets/images/dainam.jpg",
              //   height: 100,
              // ),
              // const SizedBox(height: 16),
              // Form Fields
              buildTextField('Mã sinh viên', '1571020064'),
              buildTextField('Họ và tên', 'Chử Minh Đức'),
              buildTextField('Ngày sinh', '04/06/2003'),
              buildTextField('Giới tính', 'Nam'),
              buildTextField('Số điện thoại', '0862493646'),
              buildTextField('SĐT liên lạc khác(khi cần', '0862493646'),
              buildTextField('Email', 'chuminhduc4623@gmail.com'),
              buildTextField('CMT/CCCD', '123456789'),
              buildTextField('Quê quán', 'Hà Nội'),
              buildTextField('Địa chỉ hiện nay',
                  'thôn 2, xã Vạn Phúc, huyện Thanh Trì, Hà Nội'),
            ],
          ),
        ),
      ),
    );
  }

  // Reusable text field widget
  Widget buildTextField(String label, String hintText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: hintText),
          ),
        ],
      ),
    );
  }
}
