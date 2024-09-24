import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image.asset('assets/images/white flower 1.png'),
            Image.asset('assets/images/Rectangle 54.png'),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Center(
                  child: Text('Settings',
                      style: GoogleFonts.montserrat(
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF3C2367)))),
            ),
            Positioned(
                top: 80,
                left: 250,
                child: Image.asset('assets/images/Ellipsesetting 2.png')),
            Positioned(
                top: 100,
                left: 200,
                child: Image.asset('assets/images/The Holida.png')),
            Positioned(
              top: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Account Information',
                        style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF8C8A8C))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Payment Methods',
                        style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF8C8A8C))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('AOrder History',
                        style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF8C8A8C))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Security Sittings',
                        style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF8C8A8C))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Support & Feedback',
                        style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF8C8A8C))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Language Sittings',
                        style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF8C8A8C))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Legal Information',
                        style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF8C8A8C))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('About us',
                        style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF8C8A8C))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextButton(
                        onPressed: () {},
                        child: Text('Log Out',
                            style: GoogleFonts.montserrat(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF8C8A8C)))),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
