import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readhaven/constants/app_constants.dart';
import 'package:readhaven/constants/routes.dart';
import 'package:readhaven/constants/theme.dart';
import 'package:readhaven/controller/enter_name_controller.dart';
import 'package:readhaven/widgets/custom_textfiled.dart';

class EnterName extends StatefulWidget {
  const EnterName({super.key});

  @override
  State<EnterName> createState() => _EnterNameState();
}

class _EnterNameState extends State<EnterName> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = AppConstants.getScreenHeight(context);
    final controller = Get.put(EnterNameController());

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "What do we call you?",
                      style: TextStyle(
                        color: AppTheme.primayTextColor,
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.005),
                  Text(
                    "Enter your preferred name to proceed.",
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
                      "Name",
                      style: TextStyle(
                        color: AppTheme.primayTextColor,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  CustomTextField(
                    controller: controller.nameControlller,
                    hintText: "Enter your name",
                    obscureText: false,
                    prefixIcon: Icon(
                      Icons.person,
                      color: AppTheme.alternateIconColor,
                      size: 24.0,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.06),
                  ElevatedButton(
                    onPressed: () {
                      // controller.fieldVerification(context);
                      Get.toNamed(addBookRoute);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.buttonColor,
                      minimumSize: Size(double.infinity, screenHeight * 0.062),
                      shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                    ),
                    child: Text(
                      "Next",
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
        ),
      ),
    );
  }
}
