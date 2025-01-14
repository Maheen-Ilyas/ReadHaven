import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readhaven/constants/app_constants.dart';
import 'package:readhaven/constants/routes.dart';
import 'package:readhaven/constants/theme.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = AppConstants.getScreenHeight(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/book.png'),
              SizedBox(height: screenHeight * 0.06),
              Text(
                "Read your favorite books anywhere!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppTheme.primayTextColor,
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: screenHeight * 0.005),
              Text(
                "Download your epub files and start reading.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppTheme.secondaryTextColor,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(height: screenHeight * 0.06),
              ElevatedButton(
                onPressed: () => Get.toNamed(loginRoute),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppTheme.buttonColor,
                  minimumSize: Size(double.infinity, screenHeight * 0.062),
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                ),
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    color: AppTheme.primayTextColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
