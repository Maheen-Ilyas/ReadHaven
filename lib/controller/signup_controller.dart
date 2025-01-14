import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readhaven/constants/routes.dart';
import 'package:readhaven/widgets/snackbar.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SignupController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  final SupabaseClient _supabaseClient = Supabase.instance.client;

  void fieldVerificationAndSignup(BuildContext context) async {
    if (emailController.text.isEmpty ||
        passwordController.text.isEmpty ||
        confirmPasswordController.text.isEmpty) {
      if (emailController.text.isEmpty || !emailController.text.contains('@')) {
        showSnackBar(context, 'Please enter a valid email address.');
        return;
      }
      if (passwordController.text.isEmpty ||
          passwordController.text.length < 8) {
        showSnackBar(context,
            'Please enter a valid password with 8 characters or more.');
        return;
      }
      if (confirmPasswordController.text.isEmpty) {
        showSnackBar(context, 'Please confirm your password.');
        return;
      }
      showSnackBar(context, 'Enter all your details.');
      return;
    }

    if (passwordController.text != confirmPasswordController.text) {
      showSnackBar(context, 'Check the passwords again.');
      return;
    }

    if (emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty &&
        confirmPasswordController.text.isNotEmpty) {
      final email = emailController.text;
      final password = passwordController.text;

      try {
        final response = await signup(email, password);
        if (!context.mounted) return;
        if (response.user != null) {
          Get.toNamed(enterNameRoute);
        } else {
          showSnackBar(context, 'Signup failed. Try again.');
        }
      } catch (e) {
        showSnackBar(context, 'An error occurred. Please try again.');
      }
    }
  }

  Future<AuthResponse> signup(String email, String password) async {
    return await _supabaseClient.auth.signUp(
      email: email,
      password: password,
    );
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }
}
