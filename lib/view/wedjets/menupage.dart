import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Container(
        width: 325,
        height: 530,
        decoration: BoxDecoration(
            color: const Color(0xffffffff),
            border: Border.all(width: 5, color: const Color(0xffF6E1D8)),
            borderRadius: BorderRadius.circular(26)),
        child: Stack(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed("/flowerPage");
                        },
                        child: const Text(
                          'Flowers',
                          style: TextStyle(
                              color: Color(0xff3C2367),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Divider(
                        thickness: 3,
                        color: Color(0xffF6E1D8),
                      ),
                      const Text(
                        'Plants',
                        style: TextStyle(
                            color: Color(0xff3C2367),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Divider(
                        thickness: 3,
                        color: Color(0xffF6E1D8),
                      ),
                      const Text(
                        'Bouquet',
                        style: TextStyle(
                            color: Color(0xff3C2367),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Divider(
                        thickness: 3,
                        color: Color(0xffF6E1D8),
                      ),
                      const Text(
                        'Offers',
                        style: TextStyle(
                            color: Color(0xff3C2367),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Divider(
                        thickness: 3,
                        color: Color(0xffF6E1D8),
                      ),
                      const Text(
                        'Gifts',
                        style: TextStyle(
                            color: Color(0xff3C2367),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset(
                        'assets/images/drawerimage.png',
                        width: 600,
          
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
