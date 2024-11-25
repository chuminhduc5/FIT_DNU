import 'package:fit_dnu/core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class IconButtonBasic extends StatelessWidget {
  final Function()? onPressed;
  final String title;
  final Color color;
  final int? fontSize;
  final FontWeight fontWeight;
  final Color bgColor;
  final IconData icon;
  final Color iconColor;
  final double paddingTop;
  final double paddingBottom;
  final double paddingRight;
  final double paddingLeft;
  final int? borderRadius;
  final double? distance;

  const IconButtonBasic({
    super.key,
    required this.onPressed,
    required this.title,
    this.color = AppColors.textWhite,
    this.fontSize = 14,
    this.fontWeight = FontWeight.normal,
    this.bgColor = AppColors.bgBlue,
    required this.icon,
    this.iconColor = AppColors.textWhite,
    this.paddingTop = 0,
    this.paddingBottom = 0,
    this.paddingRight = 0,
    this.paddingLeft = 0,
    this.borderRadius = 8,
    this.distance = 0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: color,
          backgroundColor: bgColor,
          padding: EdgeInsets.fromLTRB(
              paddingLeft, paddingTop, paddingRight, paddingBottom),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              icon,
              color: iconColor,
              size: 18,
            ),
            SizedBox(
              width: distance,
            ),
            Text(
              title,
              style: TextStyle(color: color, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
