import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void fieldVerification(BuildContext context) {
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      if (emailController.text.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: const Color(0xff14161B),
            content: Text(
              'Please enter your email.',
              style: TextStyle(
                color: Color(0xff83899F),
                fontSize: 16.0,
              ),
            ),
          ),
        );
      } else if (passwordController.text.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: const Color(0xff14161B),
            content: Text(
              'Please enter your password.',
              style: TextStyle(
                color: Color(0xff83899F),
                fontSize: 16.0,
              ),
            ),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: const Color(0xff14161B),
            content: Text(
              'Enter all your details.',
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
}
