import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fit_dnu/core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class SelectSchoolYearWidget extends StatefulWidget {
  //final double widthSize;

  //final ValueChanged<String?> onChanged;

  const SelectSchoolYearWidget({
    super.key,
    //required this.widthSize,
    //required this.onChanged,
  });

  @override
  State<SelectSchoolYearWidget> createState() => _SelectSchoolYearWidgetState();
}

class _SelectSchoolYearWidgetState extends State<SelectSchoolYearWidget> {
  final List<String> items = [
    'Năm 2016',
    'Năm 2017',
    'Năm 2018',
    'Năm 2018',
    'Năm 2019',
    'Năm 2020',
    'Năm 2021',
    'Năm 2022',
    'Năm 2023',
    'Năm 2024',
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
                    text: 'Chọn năm học',
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
