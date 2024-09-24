import 'package:app/constant.dart';
import 'package:app/controller/verficationapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final TextEditingController verficationController = TextEditingController();
    const pinTheme = PinTheme(
        width: 50,
        height: 50,
        textStyle: TextStyle(
          fontSize: 22,
          color: Colors.black,
        ),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.black, // Set the color of the bottom border
              width: 2.0, // Set the width of the bottom border
            ),
          ),
        ),
        margin: EdgeInsets.symmetric(horizontal: 5.0));
    return Scaffold(
      backgroundColor:
          isDarkMode ?   AppColors.darkPrimaryColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/images/Rectangle 22.png'),
                Center(child: Image.asset('assets/images/download (5) 1.png'))
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Text('Verification Code',
                style: GoogleFonts.montserrat(
                    fontSize: 22, color: Color(0xff8C8A8C))),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pleas enter verification code sent to',
                    style: GoogleFonts.montserrat(color: Color(0xff8C8A8C)),
                  ),
                  Text(
                    'Email address .....@Gmail.com',
                    style: GoogleFonts.montserrat(color: Color(0xff8C8A8C)),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    'Valid to 10 minuts',
                    style: GoogleFonts.montserrat(
                        color: Color(0xff8C8A8C), fontSize: 15),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    'Re send code',
                    style: GoogleFonts.montserrat(
                        color: Color(0xff3C2367), fontSize: 20),
                  ),
                  Container(
                    child: Pinput(
                      controller: verficationController,
                      length: 6,
                      defaultPinTheme: pinTheme,
                      focusedPinTheme: pinTheme.copyWith(
                          decoration: pinTheme.decoration!.copyWith(
                        border: Border.all(color: Colors.green),
                      )),
                      onCompleted: (pin) => debugPrint(pin),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Verification code consists of ',
                    style: GoogleFonts.montserrat(
                        color: Color(0xff8C8A8C), fontSize: 13),
                  ),
                  Text(
                    'numbers and letters ',
                    style: GoogleFonts.montserrat(
                        color: Color(0xff8C8A8C), fontSize: 13),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                      child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    padding: const EdgeInsets.symmetric(vertical: 13),
                    onPressed: () {
                      Verfication(context);
                      Get.toNamed("/homepage");
                    },
                    color: const Color(0xFFF3E9F5),
                    textColor: Colors.white,
                    minWidth: 220,
                    height: 58,
                    child: Text('Submit ',
                        style: TextStyle(
                            color: Color(0xff3C2367),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w900,
                            fontSize: 16)),
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
