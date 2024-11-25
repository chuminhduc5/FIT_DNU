import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fit_dnu/core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class SelectTeacherWidget extends StatefulWidget {
  const SelectTeacherWidget({super.key});

  @override
  State<SelectTeacherWidget> createState() => _SelectTeacherWidgetState();
}

class _SelectTeacherWidgetState extends State<SelectTeacherWidget> {
  final List<String> items = [
    'Giảng viên Trần Đăng Công',
    'Giảng viên Lê Trung Hiếu',
    'Giảng viên Trần Đức Minh',
    'Giảng viên Nguyễn Thị Hoài',
  ];
  String? selectedValue;
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double dropdownWidth = constraints.maxWidth;
      return DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          isExpanded: true,
          hint: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                    text: 'Chọn giảng viên',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.textGrey,
                    )),
                TextSpan(
                    text: ' (*)',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.textRed,
                    ))
              ],
            ),
          ),
          items: items
              .map((String item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ))
              .toList(),
          value: selectedValue,
          onChanged: (String? value) {
            setState(() {
              selectedValue = value;
              _isExpanded = !_isExpanded;
            });
          },
          buttonStyleData: ButtonStyleData(
            height: 40,
            width: dropdownWidth,
            padding: const EdgeInsets.only(left: 14, right: 14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: AppColors.grey,
              ),
              color: AppColors.bgWhite,
            ),
            elevation: 10,
          ),
          iconStyleData: const IconStyleData(
            icon: Icon(
              Icons.unfold_more,
              size: 14,
              color: AppColors.textBlack,
            ),
            iconSize: 14,
          ),
          dropdownStyleData: DropdownStyleData(
            maxHeight: 150,
            width: dropdownWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            offset: const Offset(0, -10),
          ),
          menuItemStyleData: MenuItemStyleData(
            height: 30,
            overlayColor: WidgetStateProperty.all(AppColors.redWithOpacity),
          ),
        ),
      );
    });
  }
}
