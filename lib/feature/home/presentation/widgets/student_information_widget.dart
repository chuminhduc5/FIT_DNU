import 'package:fit_dnu/core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class StudentInformationWidget extends StatelessWidget {
  const StudentInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      padding: const EdgeInsets.all(10),
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
      child: Row(
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: 30, // Adjust the radius as needed
                child: ClipOval(
                  child: Image.asset(
                    "assets/images/logo_dainam.png",
                    fit: BoxFit.cover,
                    width: 80,
                    height: 80,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                '2.3/4',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textBlack,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Chử Minh Đức',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textBlack,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Mã sinh viên: 1571020064',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textBlack,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Tình trạng sức khỏe: Chưa khai báo',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textBlack,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
