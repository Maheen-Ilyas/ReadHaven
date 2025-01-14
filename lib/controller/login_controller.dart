import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readhaven/constants/routes.dart';
import 'package:readhaven/widgets/snackbar.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final SupabaseClient _supabaseClient = Supabase.instance.client;

  void fieldVerificationAndLogin(BuildContext context) async {
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
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
      showSnackBar(context, 'Enter all your details.');
      return;
    }

    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      final email = emailController.text;
      final password = passwordController.text;

      try {
        final response = await login(email, password);
        if (!context.mounted) return;
        if (response.user != null) {
          Get.toNamed(navBarRoute);
        } else {
          showSnackBar(context, 'Login failed. Try again.');
        }
      } catch (e) {
        showSnackBar(context, 'An error occurred. Please try again.');
      }
    }
  }

  Future<AuthResponse> login(String email, String password) async {
    return await _supabaseClient.auth.signInWithPassword(
      email: email,
      password: password,
    );
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
