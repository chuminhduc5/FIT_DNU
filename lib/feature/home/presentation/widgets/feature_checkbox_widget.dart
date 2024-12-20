import 'package:fit_dnu/core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class FeatureCheckboxWidget extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?>? onChanged;
  final String title;

  const FeatureCheckboxWidget({
    super.key,
    required this.value,
    required this.onChanged,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 15),
      visualDensity: const VisualDensity(vertical: -1.0),
      side: const BorderSide(color: AppColors.checkedColor),
      checkboxShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      activeColor: AppColors.bgGreen,
      checkColor: AppColors.checkColor,
      value: value,
      onChanged: onChanged,
      title: Transform.translate(
          offset: const Offset(10, 0),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          )),
      dense: true,
      //controlAffinity: ListTileControlAffinity.leading,
    );
  }
}
