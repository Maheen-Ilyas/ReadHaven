import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readhaven/views/onboarding/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Read Haven',
      theme: ThemeData(
        fontFamily: GoogleFonts.dmSans().fontFamily,
        scaffoldBackgroundColor: const Color(0xff14161B),
        appBarTheme: AppBarTheme(
          backgroundColor: const Color(0xff14161B),
          surfaceTintColor: const Color(0xff14161B),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const Onboarding(),
    );
  }
}
