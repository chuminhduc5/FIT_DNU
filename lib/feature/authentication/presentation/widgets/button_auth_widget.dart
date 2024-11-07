import 'package:fit_dnu/core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ButtonAuthWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String textButton;
  final bool isLoading;

  const ButtonAuthWidget({
    super.key,
    required this.onPressed,
    required this.textButton,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: AppColors.bgAppbar,
            padding: const EdgeInsets.all(5.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
        child: isLoading
            ? const SizedBox(
                width: 24,
                height: 24,
                child: CircularProgressIndicator(
                  strokeWidth: 2.0,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              )
            : Text(
                textButton,
                style: const TextStyle(fontSize: 20),
              ),
      ),
    );
  }
}
