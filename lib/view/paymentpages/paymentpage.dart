import 'package:app/constant.dart';
import 'package:app/view/paymentpages/paymentmethod.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      backgroundColor:
          isDarkMode ? AppColors.darkPrimaryColor : AppColors.lightPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 90, left: 20),
                  child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(Icons.arrow_back_ios,
                        color: isDarkMode
                            ? AppColors.darkTextColor
                            : AppColors.lightTextColor),
                  ),
                ),
                SizedBox(width: 60),
                Padding(
                  padding: const EdgeInsets.only(top: 90),
                  child: Text(
                    'Payment',
                    style: GoogleFonts.montserrat(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        color: isDarkMode
                            ? AppColors.darkTextColor
                            : AppColors.lightTextColor),
                  ),
                )
              ],
            ),
            SizedBox(height: 40),
            _buildTextField("Name", context),
            SizedBox(height: 20),
            _buildTextField("Phone Number", context),
            SizedBox(height: 20),
            _buildTextField("Email", context),
            SizedBox(height: 20),
            _buildTextField("Town/City", context),
            SizedBox(height: 20),
            _buildTextField("Address", context),
            SizedBox(height: 20),
            _buildTextField("Special Instructions About Address", context),
            SizedBox(height: 25),
            Center(
                child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              padding: const EdgeInsets.symmetric(vertical: 13),
              onPressed: () {},
              color: isDarkMode
                  ? AppColors.darkPrimaryColor
                  : AppColors.lightPrimaryColor,
              textColor: isDarkMode
                  ? AppColors.darkTextColor
                  : AppColors.lightTextColor,
              minWidth: 220,
              height: 58,
              child: Text('Use My Location',
                  style: TextStyle(
                      color: isDarkMode
                          ? AppColors.darkTextColor
                          : AppColors.lightTextColor,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w900,
                      fontSize: 16)),
            )),
            SizedBox(height: 25),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PaymentMethods()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: isDarkMode
                      ? AppColors.darkPrimaryColor
                      : AppColors.lightPrimaryColor,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                child: const Text(
                  'Continue',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Image.asset('assets/images/payment.png')
          ],
        ),
      ),
    );
  }

  // Helper method to build text fields with theme-based styles
  Widget _buildTextField(String label, BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return SizedBox(
      width: 350,
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(
            color:
                isDarkMode ? AppColors.darkTextColor : AppColors.lightTextColor,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: isDarkMode ? Colors.black : Colors.white),
            borderRadius: BorderRadius.circular(7),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: isDarkMode ? Colors.black : Colors.white),
            borderRadius: BorderRadius.circular(7),
          ),
          filled: true,
          fillColor: isDarkMode ? AppColors.darkPrimaryColor : Colors.white,
        ),
      ),
    );
  }
}
