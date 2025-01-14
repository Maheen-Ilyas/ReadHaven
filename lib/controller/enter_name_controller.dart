import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readhaven/constants/theme.dart';

class EnterNameController extends GetxController {
  final TextEditingController nameControlller = TextEditingController();

  @override
  void onClose() {
    nameControlller.dispose();
    super.onClose();
  }

  void fieldVerification(BuildContext context) {
    if (nameControlller.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: AppTheme.backgroundColor,
          content: Text(
            'Please enter your name.',
            style: TextStyle(
              color: AppTheme.secondaryTextColor,
              fontSize: 16.0,
            ),
          ),
        ),
      );
    }
  }
}
