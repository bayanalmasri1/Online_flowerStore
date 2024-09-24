import 'package:app/constant.dart'; // Import the colors
import 'package:app/controller/loginapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    final screenWidth = MediaQuery.of(context).size.width;
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor:
          isDarkMode ? AppColors.darkPrimaryColor : const Color.fromARGB(255, 229, 245, 245),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25.0, left: 200),
                  child: Image.asset(
                    "assets/images/Ellipse 2.png",
                
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 150),
                  child: Image.asset(
                    "assets/images/Bunch Orchid with Lila Wall Decal 1 copy.png",
  
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100.0, left: 15),
                  child: Text(
                    'Logo',
                    style: GoogleFonts.montserrat(
                      fontSize: screenWidth > 600 ? 60 : 64,
                      color: isDarkMode
                          ? AppColors.darkTextColor
                          : AppColors.lightTextColor,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 300,
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
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
                        color: isDarkMode ? Colors.black : Colors.white),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: isDarkMode ?  Colors.black : Colors.white),
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
                        color: isDarkMode ?   Colors.black :Colors.white),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: isDarkMode ?   Colors.black:Colors.white),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  filled: true,
                  fillColor:
                      isDarkMode ?  AppColors.darkPrimaryColor:Colors.white ,
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
                        color: isDarkMode ?   Colors.black :Colors.white),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: isDarkMode ? Colors.black :Colors.white),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  filled: true,
                  fillColor:
                      isDarkMode ? AppColors.darkPrimaryColor :Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: Text(
                'Should be none less than 8 characters',
                style: TextStyle(
                  fontSize: 14,
                  color: isDarkMode ? AppColors.darkTextColor : Colors.black54,
                ),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Forget password?',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    color: isDarkMode ? AppColors.darkTextColor : Colors.black,
                    fontSize: 16,
                  ),
                ),
                TextButton(
                  child: Text(
                    ' Sign up',
                    style: TextStyle(
                      color: isDarkMode
                          ? AppColors.darkTextColor
                          : AppColors.lightTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  onPressed: () {
                    Get.toNamed("/signup");
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  final email = emailController.text.trim();
                  final password = passwordController.text.trim();
                  if (email.isEmpty || password.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Please fill in both email and password'),
                      ),
                    );
                  } else {
                    login(context, emailController, passwordController);
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: isDarkMode
                      ? AppColors.darkTextColor
                      : AppColors.lightTextColor,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                child: const Text(
                  'Log in',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 250, bottom: 10),
                  child: Image.asset(
                    "assets/images/Ellipse 1.png",
                  ),
                ),
                Image.asset(
                  "assets/images/download (4) 1.png",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
