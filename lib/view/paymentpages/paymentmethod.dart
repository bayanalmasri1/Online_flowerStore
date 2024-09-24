import 'package:app/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({super.key});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  String _selectedPaymentMethod = 'Credit Card';
  bool _saveForFuture = true;
  

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDarkMode?  AppColors.darkPrimaryColor: AppColors.lightPrimaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 100,left: 20),
                      child: IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: Icon(Icons.arrow_back_ios))),
                  SizedBox(width: 60),
                  Padding(
                    padding: const EdgeInsets.only(top: 90),
                    child: Text(
                      'Payment',
                      style: GoogleFonts.montserrat(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF3C2367),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Text(
                'Payment Method',
                style: GoogleFonts.montserrat(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF3C2367),
                ),
              ),
              SizedBox(height: 10),
              Wrap(
                children: [
                  _buildPaymentMethodButton('Credit Card'),
                  SizedBox(width: 10),
                  _buildPaymentMethodButton('Debit Card'),
                  SizedBox(width: 10),
                  _buildPaymentMethodButton('PayPal'),
                  SizedBox(width: 10),
                  _buildPaymentMethodButton('Digital Wallet'),
                ],
              ),
              SizedBox(height: 30),
              Text(
                'Card Information',
                style: GoogleFonts.montserrat(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF3C2367),
                ),
              ),
              SizedBox(height: 10),
              _buildTextField('Card Holder Full Name'),
              SizedBox(height: 10),
              _buildTextField('Card Number'),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child: _buildTextField('Expiration Date')),
                  SizedBox(width: 10),
                  Expanded(child: _buildTextField('CVV')),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Save for Future Purchases',
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  color: Color(0xFF3C2367),
                ),
              ),
              Row(
                children: [
                  Radio(
                    value: true,
                    groupValue: _saveForFuture,
                    onChanged: (bool? value) {
                      setState(() {
                        _saveForFuture = value!;
                      });
                    },
                  ),
                  Text(
                    'Yes',
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      color: Color(0xFF3C2367),
                    ),
                  ),
                  Radio(
                    value: false,
                    groupValue: _saveForFuture,
                    onChanged: (bool? value) {
                      setState(() {
                        _saveForFuture = value!;
                      });
                    },
                  ),
                  Text(
                    'No',
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      color: Color(0xFF3C2367),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF3C2367),
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Text(
                    'Continue',
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPaymentMethodButton(String method) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            _selectedPaymentMethod = method;
          });
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: _selectedPaymentMethod == method
              ? Color(0xFF3C2367)
              : Colors.white,
          disabledBackgroundColor: _selectedPaymentMethod == method
              ? Colors.white
              : Color(0xFF3C2367),
          side: BorderSide(color: Color(0xFF3C2367)),
        ),
        child: Text(
          method,
          style: GoogleFonts.montserrat(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String hint) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: GoogleFonts.montserrat(
          color: Colors.grey,
          fontSize: 14,
        ),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
