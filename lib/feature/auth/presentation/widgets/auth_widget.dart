

import 'package:doctor_app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class AuthWidget extends StatelessWidget {
  final String hinText;
  final Widget? widget;
  const AuthWidget({super.key, required this.hinText,  this.widget});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hinText,
        hintStyle: TextStyle(fontSize: 16, color: AppColors.grey),
        suffixIcon: widget,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),

        )
      ),
    );
  }
}
