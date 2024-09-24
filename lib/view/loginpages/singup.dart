import 'package:app/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    // TextEditingControllers to handle form data
    final TextEditingController emailController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController userNameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController confirmPasswordController =
        TextEditingController();

    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor:
          isDarkMode ?  AppColors.darkPrimaryColor :AppColors.lightPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/images/Rectangle 24.png'),
                Positioned(
                  top: 100,
                  left: 10,
                  child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(Icons.arrow_back_ios),
                    iconSize: 27,
                  ),
                ),
                Positioned(
                  top: 100,
                  right: 0,
                  left: 10,
                  child: Center(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 32,
                        color: Color(0xff452F6A),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 210),
                  child: Image.asset(
                    'assets/images/no back 1.png',
                    height: 250,
                  ),
                ),
                Positioned(
                  top: 200, // Adjust position as needed
                  left: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey[200],
                    child: Icon(Icons.person, size: 50, color: Colors.grey),
                  ),
                ),
                Positioned(
                  top: 300, // Adjust position as needed
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Text(
                      'Add Profile Photo',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 300,
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Enter your email',
                  labelStyle: TextStyle(
                    color: isDarkMode
                        ? AppColors.darkTextColor
                        : AppColors.lightTextColor,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: isDarkMode ?  Colors.black :Colors.white),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: isDarkMode ?  Colors.black : Colors.white ),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  filled: true,
                  fillColor:
                      isDarkMode ?  AppColors.darkPrimaryColor: Colors.white
                ),
              ),
            ),
            const SizedBox(height: 20),

            SizedBox(
              width: 300,
              child: TextField(
                controller: phoneController,
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  labelStyle: TextStyle(
                    color: isDarkMode
                        ? AppColors.darkTextColor
                        : AppColors.lightTextColor,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: isDarkMode ?  Colors.black:Colors.white ),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: isDarkMode ? Colors.black:Colors.white),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  filled: true,
                  fillColor:
                      isDarkMode ? AppColors.darkPrimaryColor: Colors.white ,
                ),
              ),
            ),
            const SizedBox(height: 20),

            SizedBox(
              width: 300,
              child: TextField(
                controller: userNameController,
                decoration: InputDecoration(
                  labelText: 'User Name',
                  labelStyle: TextStyle(
                    color: isDarkMode
                        ? AppColors.darkTextColor
                        : AppColors.lightTextColor,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: isDarkMode ?  Colors.black : Colors.white ),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: isDarkMode ? Colors.black : Colors.white ),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  filled: true,
                  fillColor:
                      isDarkMode ? AppColors.darkPrimaryColor :Colors.white ,
                ),
              ),
            ),
            const SizedBox(height: 20),

            SizedBox(
              width: 300,
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Passwored',
                  labelStyle: TextStyle(
                    color: isDarkMode
                        ? AppColors.darkTextColor
                        : AppColors.lightTextColor,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: isDarkMode ? Colors.black:Colors.white ),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: isDarkMode ?  Colors.black :Colors.white),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  filled: true,
                  fillColor:
                      isDarkMode ?  AppColors.darkPrimaryColor :Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20),

            SizedBox(
              width: 300,
              child: TextField(
                controller: confirmPasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Re-Passwored',
                  labelStyle: TextStyle(
                    color: isDarkMode
                        ? AppColors.darkTextColor
                        : AppColors.lightTextColor,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: isDarkMode ?  Colors.black :Colors.white),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: isDarkMode ? Colors.black :Colors.white ),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  filled: true,
                  fillColor:
                      isDarkMode ?  AppColors.darkPrimaryColor:Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20),

            SizedBox(
              width: 300,
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Uploed pdf',
                  labelStyle: TextStyle(
                    color: isDarkMode
                        ? AppColors.darkTextColor
                        : AppColors.lightTextColor,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: isDarkMode ?  Colors.black:Colors.white),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: isDarkMode ? Colors.black :Colors.white),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  suffixIcon: IconButton(
                      icon: Icon(Icons.picture_as_pdf_rounded),
                      onPressed: () {}),
                  filled: true,
                  fillColor:
                      isDarkMode ?  AppColors.darkPrimaryColor :Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),

            // Sign Up Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (emailController.text.isNotEmpty &&
                      passwordController.text ==
                          confirmPasswordController.text) {
                    // Call register function or handle form submission
                    Get.toNamed("/verification");
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Please check your inputs!')),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF3C2367),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 7),
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                ),
                child: const Text(
                  'Sign up',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            SizedBox(height: 20),

            // Login Link
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account? ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed("/"); // Navigate to login
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Color(0xFF3C2367),
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
