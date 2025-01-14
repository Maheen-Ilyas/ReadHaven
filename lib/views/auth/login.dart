import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readhaven/constants/app_constants.dart';
import 'package:readhaven/constants/routes.dart';
import 'package:readhaven/constants/theme.dart';
import 'package:readhaven/controller/login_controller.dart';
import 'package:readhaven/widgets/custom_textfiled.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = AppConstants.getScreenHeight(context);
    final controller = Get.put(LoginController());

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "Welcome back!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppTheme.primayTextColor,
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.005),
                  Text(
                    "Login to continue reading your favorite books.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppTheme.secondaryTextColor,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.06),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Email Address",
                      style: TextStyle(
                        color: AppTheme.primayTextColor,
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
                      color: AppTheme.alternateIconColor,
                      size: 24.0,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.034),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Password",
                      style: TextStyle(
                        color: AppTheme.primayTextColor,
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
                      color: AppTheme.alternateIconColor,
                      size: 28.0,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.018),
                  GestureDetector(
                    onTap: () {},
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: AppTheme.secondaryTextColor,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.06),
                  ElevatedButton(
                    onPressed: () async {
                      controller.fieldVerificationAndLogin(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.buttonColor,
                      minimumSize: Size(double.infinity, screenHeight * 0.062),
                      shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: AppTheme.primayTextColor,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.018),
                  GestureDetector(
                    onTap: () => Get.toNamed(signupRoute),
                    child: Text(
                      "Don't have an account? Sign up here!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppTheme.secondaryTextColor,
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
