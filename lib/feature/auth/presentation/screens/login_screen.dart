import 'dart:ui';

import 'package:doctor_app/core/common_widgets/button_widget.dart';
import 'package:doctor_app/core/common_widgets/text_button_widget.dart';
import 'package:doctor_app/core/theme/colors.dart';
import 'package:doctor_app/feature/auth/presentation/widgets/auth_widget.dart';
import 'package:doctor_app/feature/auth/presentation/widgets/gf_button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  PageController controller = PageController();
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
              'Welcome back',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            const Text(
              'You can search course, apply course and find,\n scholarship for abroad studies',
              style: TextStyle(
                fontSize: 14,
                color: AppColors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: height * 0.1),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GfButtonWidget(image: 'assets/img/g.png', name: 'Google'),
                GfButtonWidget(image: 'assets/img/f.png', name: 'Facebook')
              ],
            ),
            SizedBox(
              height: height * 0.05,
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
              height: height * 0.05,
            ),
            ButtonWidget(
              onPressed: () {},
              text: 'Login',
              height: 54,
              width: 295,
            ),
            TextButtonWidget(
              text: 'Forgot password',
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        height: 390,
                        decoration: const BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 280,
                                child: PageView(
                                  controller: controller,
                                  children: [
                                    Show(height: height),
                                    Show(height: height),
                                    Show(height: height),
                                  ],
                                ),
                              ),
                              Center(
                                  child: ButtonWidget(
                                text: 'Continue',
                                height: 54,
                                width: 295,
                                onPressed: () {
                                  controller.nextPage(
                                      duration: const Duration(milliseconds: 500),
                                      curve: Curves.easeInOut);
                                },
                              )),
                            ],
                          ),
                        ),
                      );
                    });
              },
            ),
            SizedBox(
              height: height * 0.1,
            ),
            TextButtonWidget(
              text: 'Dont have an account? Join us',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class Show extends StatelessWidget {
  final double height;

  const Show({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: height * 0.01,
        ),
        const Center(
          child: SizedBox(
            width: 130,
            child: Divider(
              thickness: 5,
            ),
          ),
        ),
        SizedBox(
          height: height * 0.03,
        ),
        const Text(
          'Forgot Password',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: AppColors.black),
        ),
        SizedBox(
          height: height * 0.01,
        ),
        const Text(
          'Enter your email for the verification proccesses\n we will send 4 digits code to your email.',
          style: TextStyle(fontSize: 14, color: AppColors.grey),
        ),
        SizedBox(
          height: height * 0.05,
        ),
        const AuthWidget(hinText: 'Email'),
        SizedBox(
          height: height * 0.05,
        ),
      ],
    );
  }
}
