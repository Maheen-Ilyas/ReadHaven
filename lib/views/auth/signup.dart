import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readhaven/constants/app_constants.dart';
import 'package:readhaven/controller/signup_controller.dart';
import 'package:readhaven/widgets/custom_textfiled.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = AppConstants.getScreenHeight(context);
    final controller = Get.put(SignupController());

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.005),
                  Text(
                    "Sign up add your favorite books and start reading.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff83899F),
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.06),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Email Address",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  CustomTextField(
                    controller: controller.emailController,
                    hintText: "Enter your email",
                    obscureText: false,
                    prefixIcon: Icon(
                      Icons.alternate_email_rounded,
                      color: Color(0xff83899F),
                      size: 24.0,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.034),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Password",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  CustomTextField(
                    controller: controller.passwordController,
                    hintText: "Enter your password",
                    obscureText: true,
                    prefixIcon: Icon(
                      Icons.pin_rounded,
                      color: Color(0xff83899F),
                      size: 28.0,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.034),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Confirm Password",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  CustomTextField(
                    controller: controller.confirmPasswordController,
                    hintText: "Confirm your password",
                    obscureText: true,
                    prefixIcon: Icon(
                      Icons.pin_rounded,
                      color: Color(0xff83899F),
                      size: 28.0,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.06),
                  ElevatedButton(
                    onPressed: () {
                      // controller.fieldVerification(context);
                      Get.toNamed('/name');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff8C31FF),
                      minimumSize: Size(double.infinity, screenHeight * 0.062),
                      shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                    ),
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.018),
                  GestureDetector(
                    onTap: () => Get.toNamed('/login'),
                    child: Text(
                      "Already have an account? Login here!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff83899F),
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}