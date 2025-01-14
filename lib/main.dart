import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readhaven/views/auth/enter_name.dart';
import 'package:readhaven/views/auth/login.dart';
import 'package:readhaven/views/auth/signup.dart';
import 'package:readhaven/views/onboarding/add_book.dart';
import 'package:readhaven/views/onboarding/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Read Haven',
      theme: ThemeData(
        fontFamily: GoogleFonts.dmSans().fontFamily,
        scaffoldBackgroundColor: const Color(0xff14161B),
        appBarTheme: AppBarTheme(
          backgroundColor: const Color(0xff14161B),
          surfaceTintColor: const Color(0xff14161B),
        ),
      ),
      getPages: [
        GetPage(name: '/login', page: () => const Login()),
        GetPage(name: '/signup', page: () => const Signup()),
        GetPage(name: '/name', page: () => const EnterName()),
        GetPage(name: '/addbook', page: () => const AddBook()),
      ],
      debugShowCheckedModeBanner: false,
      home: const Onboarding(),
    );
  }
}
