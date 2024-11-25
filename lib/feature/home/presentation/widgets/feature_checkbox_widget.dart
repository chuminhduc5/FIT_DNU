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
      contentPadding: EdgeInsets.zero,
      visualDensity: const VisualDensity(vertical: -4.0),
      side: const BorderSide(color: AppColors.checkedColor),
      activeColor: AppColors.bgGreen,
      checkColor: AppColors.checkColor,
      value: value,
      onChanged: onChanged,
      title: Transform.translate(
          offset: const Offset(-10, 0),
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
