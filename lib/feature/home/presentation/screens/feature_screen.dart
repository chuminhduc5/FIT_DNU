import 'package:fit_dnu/core/config/theme/app_colors.dart';
import 'package:fit_dnu/feature/home/presentation/widgets/feature_checkbox_widget.dart';
import 'package:flutter/material.dart';

class FeatureScreen extends StatefulWidget {
  const FeatureScreen({super.key});

  @override
  State<FeatureScreen> createState() => _FeatureScreenState();
}

class _FeatureScreenState extends State<FeatureScreen> {
  bool isArrived = false;
  bool isLockedCheckbox = false;

  void onArrivedChanged(bool? value) {
    if (!isLockedCheckbox) {
      setState(() {
        isArrived = value ?? false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'FIT - DNU',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: AppColors.textWhite,
          ),
        ),
        backgroundColor: AppColors.bgOrange,
        iconTheme: const IconThemeData(color: AppColors.bgWhite),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Chức năng phổ biến',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textBlack,
                        ),
                      ),
                      Text('Chọn chức năng quan trọng nhất'),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  FeatureCheckboxWidget(
                      value: isArrived,
                      onChanged: onArrivedChanged,
                      title: 'Dịch vụ 1 cửa'),
                  FeatureCheckboxWidget(
                      value: isArrived,
                      onChanged: onArrivedChanged,
                      title: 'Thời khóa biểu'),
                  FeatureCheckboxWidget(
                      value: isArrived,
                      onChanged: onArrivedChanged,
                      title: 'Lớp tín chỉ'),
                  FeatureCheckboxWidget(
                      value: isArrived,
                      onChanged: onArrivedChanged,
                      title: 'Kết quả học tập'),
                  FeatureCheckboxWidget(
                      value: isArrived,
                      onChanged: onArrivedChanged,
                      title: 'Lớp hành chính'),
                  FeatureCheckboxWidget(
                      value: isArrived,
                      onChanged: onArrivedChanged,
                      title: 'Tin tức'),
                  FeatureCheckboxWidget(
                      value: isArrived,
                      onChanged: onArrivedChanged,
                      title: 'Sự kiện'),
                  FeatureCheckboxWidget(
                      value: isArrived,
                      onChanged: onArrivedChanged,
                      title: 'Thng tin chung'),
                  FeatureCheckboxWidget(
                      value: isArrived,
                      onChanged: onArrivedChanged,
                      title: 'Văn bản hướng dẫn'),
                  FeatureCheckboxWidget(
                      value: isArrived,
                      onChanged: onArrivedChanged,
                      title: 'Phản hồi'),
                  FeatureCheckboxWidget(
                      value: isArrived,
                      onChanged: onArrivedChanged,
                      title: 'Khảo sát'),
                  FeatureCheckboxWidget(
                      value: isArrived,
                      onChanged: onArrivedChanged,
                      title: 'Khai báo sức khỏe'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
