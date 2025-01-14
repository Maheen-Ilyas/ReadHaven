import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readhaven/constants/app_constants.dart';

class AddBook extends StatefulWidget {
  const AddBook({super.key});

  @override
  State<AddBook> createState() => _AddBookState();
}

class _AddBookState extends State<AddBook> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = AppConstants.getScreenHeight(context);

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Get.back(),
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 16.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 0.1),
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset('assets/book2.png'),
                  SizedBox(height: screenHeight * 0.06),
                  Text(
                    "Upload your favorite book and start your journey!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.005),
                  Text(
                    "You can upload your favorite book in .epub format",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff83899F),
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.06),
                  ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff8C31FF),
                      minimumSize: Size(double.infinity, screenHeight * 0.062),
                      shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                    ),
                    icon: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(4.0),
                        ),
                        shape: BoxShape.rectangle,
                      ),
                      child: Icon(Icons.add_rounded),
                    ),
                    label: Text(
                      "Add new book",
                      style: TextStyle(
                        color: Colors.white,
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
