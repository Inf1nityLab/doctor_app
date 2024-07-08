import 'package:doctor_app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class GfButtonWidget extends StatelessWidget {
  final String image;
  final String name;
  const GfButtonWidget({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Container(
        height: 54,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.white,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(image, height: 18.17, width: 18.17,),
              const SizedBox(width: 10,),
               Text(name, style: const TextStyle(fontSize: 16, color: AppColors.grey),),
            ],
          ),
        ),
      ),
    );
  }
}
