import 'package:doctor_app/core/common_widgets/button_widget.dart';
import 'package:doctor_app/core/common_widgets/text_button_widget.dart';
import 'package:doctor_app/core/theme/colors.dart';
import 'package:doctor_app/feature/auth/presentation/widgets/auth_widget.dart';
import 'package:doctor_app/feature/auth/presentation/widgets/gf_button_widget.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Join us to start searching',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
            ),
            const Text(
              'You can search course, apply course and find,\n scholarship for abroad studies',
              style: TextStyle(fontSize: 14, color: AppColors.grey),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: height * 0.1,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GfButtonWidget(
                  image: 'assets/img/g.png',
                  name: 'Google',
                ),
                GfButtonWidget(
                  image: 'assets/img/f.png',
                  name: 'Facebook',
                ),
              ],
            ),
            SizedBox(
              height: height * 0.1,
            ),
            const AuthWidget(
              hinText: 'Name',
            ),
            SizedBox(
              height: height * 0.03,
            ),
            const AuthWidget(
              hinText: 'Email',
            ),
            SizedBox(
              height: height * 0.03,
            ),
            AuthWidget(
              hinText: 'Password',
              widget: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.remove_red_eye_outlined)),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                Checkbox(
                    activeColor: AppColors.grey,
                    shape: const CircleBorder(),
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    }),
                const Text(
                  'I agree with the Terms of Service & Privacy Police',
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.02,),
            ButtonWidget(
              onPressed: (){},
              text: 'Sign up',
              height: 54,
              width: 295,
            ),
            SizedBox(height: height * 0.02,),
            TextButtonWidget(text: 'Have an account? Log in', onPressed: (){},),
          ],
        ),
      ),
    );
  }
}
