import 'package:doctor_app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  final double height;
  final double width;
  const ButtonWidget({super.key, this.onPressed, required this.text, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.green,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
