import 'package:fit_dnu/core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class SubjectCardWidget extends StatelessWidget {
  int index;
  final String subject;
  final String subjectId;
  final String evaluate;
  final Function()? onPressed;

  SubjectCardWidget({
    super.key,
    required this.index,
    required this.subject,
    required this.subjectId,
    required this.evaluate,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.bgWhite,
        ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.red,
              child: Text(
                (index + 1).toString(),
                style: const TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(subject),
                Text(subjectId),
                Text(
                  evaluate,
                  style: const TextStyle(color: Colors.green),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
