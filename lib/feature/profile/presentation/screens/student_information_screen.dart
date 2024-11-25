import 'package:fit_dnu/feature/profile/presentation/blocs/profile_bloc/profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

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
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          if (state is ProfileLoading) {
            return const Center(
              child: CircularProgressIndicator(
                color: AppColors.bgRed,
              ),
            );
          } else if (state is ProfileSuccess) {
            final profile = state.profile;
            return RefreshIndicator(
              onRefresh: () async {
                context.read<ProfileBloc>().add(FetchProfileRequest());
              },
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      buildTextField('Mã sinh viên', profile.studentCode),
                      buildTextField('Họ và tên', profile.fullName),
                      buildTextField('Ngày sinh',
                          DateFormat('HH:mm:ss').format(profile.birthDate)),
                      buildTextField('Giới tính', profile.gender),
                      buildTextField('Số điện thoại', profile.phoneNumber),
                      buildTextField(
                          'SĐT liên lạc khác(khi cần)', '0862493646'),
                      buildTextField('Email', profile.email),
                      buildTextField('CMT/CCCD', '001021050'),
                      buildTextField('Quê quán', profile.hometown),
                      buildTextField('Địa chỉ hiện nay', profile.address),
                    ],
                  ),
                ),
              ),
            );
          } else if (state is ProfileFailed) {
            return const Center(
              child: Text(
                "Lấy thông tin sinh viên thất bại",
                style: TextStyle(color: AppColors.black),
              ),
            );
          } else {
            return const Center(
              child: Text(
                "Lỗi mạng",
                style: TextStyle(color: AppColors.black),
              ),
            );
          }
        },
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
