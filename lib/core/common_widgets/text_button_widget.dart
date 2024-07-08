import 'package:doctor_app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  final Function()? onPressed;
  final String text;

  const TextButtonWidget({super.key, this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(fontSize: 14, color: AppColors.green),
        ));
  }
}
