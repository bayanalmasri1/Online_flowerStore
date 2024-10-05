import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  Image.asset('assets/images/Rectangle 54.png'),
                  Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Image.asset('assets/images/Ellipsesetting 2.png'),
                      Image.asset('assets/images/The Holida.png')
                    ],
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        'Settings',
                        style: TextStyle(
                            color: Color(0xff3C2367),
                            fontSize: 30,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      CustomSettingMenu(
                        onPressed: () {},
                        text: 'Account Information',
                      ),
                      CustomSettingMenu(
                        onPressed: () {},
                        text: 'payment Methods',
                      ),
                      CustomSettingMenu(
                        onPressed: () {},
                        text: 'Order History',
                      ),
                      CustomSettingMenu(
                        onPressed: () {},
                        text: 'Security Settings',
                      ),
                      CustomSettingMenu(
                        onPressed: () {},
                        text: 'Support & Feedback',
                      ),
                      CustomSettingMenu(
                        onPressed: () {},
                        text: 'Language Settings',
                      ),
                      CustomSettingMenu(
                        onPressed: () {},
                        text: 'Legal Information',
                      ),
                      CustomSettingMenu(
                        text: 'About us',
                        onPressed: () {},
                      ),
                      CustomSettingMenu(
                        onPressed: () {
                          FocusManager.instance.primaryFocus?.unfocus();
                         // controller.logout();
                        },
                        text: 'Log Out',
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom:200),
                child: Image.asset('assets/images/white flower 1.png'),
              ),
            ],
          ),
        ),
      ),

    );
  }
}


class CustomSettingMenu extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  const CustomSettingMenu(
      {super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: const TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                        fontSize: 18),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
