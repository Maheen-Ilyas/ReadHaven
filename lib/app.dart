import 'package:flutter/material.dart';
import 'package:readhaven/constants/routes.dart';
import 'package:readhaven/constants/theme.dart';
import 'package:readhaven/views/auth/enter_name.dart';
import 'package:readhaven/views/auth/login.dart';
import 'package:readhaven/views/auth/signup.dart';
import 'package:readhaven/views/onboarding/add_book.dart';
import 'package:readhaven/views/onboarding/onboarding.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Read Haven',
      theme: ThemeData(
        fontFamily: AppTheme.fontFamily,
        scaffoldBackgroundColor: AppTheme.backgroundColor,
        appBarTheme: AppBarTheme(
          backgroundColor: AppTheme.backgroundColor,
          surfaceTintColor: AppTheme.backgroundColor,
        ),
      ),
      getPages: [
        GetPage(name: loginRoute, page: () => const Login()),
        GetPage(name: signupRoute, page: () => const Signup()),
        GetPage(name: enterNameRoute, page: () => const EnterName()),
        GetPage(name: addBookRoute, page: () => const AddBook()),
      ],
      debugShowCheckedModeBanner: false,
      home: const Onboarding(),
    );
  }
}
