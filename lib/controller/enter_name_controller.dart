import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          backgroundColor: const Color(0xff14161B),
          content: Text(
            'Please enter your name.',
            style: TextStyle(
              color: Color(0xff83899F),
              fontSize: 16.0,
            ),
          ),
        ),
      );
    }
  }
}
