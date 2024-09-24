import 'package:app/view/wedjets/homebar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class wedjetflower extends StatelessWidget {
  const wedjetflower({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          HomeBar(),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: Text(
              "Flowers",
              style: GoogleFonts.montserrat(
                fontSize: 32,
                fontWeight: FontWeight.w500,
                color: Color(0xFF3C2367),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                bottom: 25), // Adding padding to align buttons properly
            child: Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceEvenly, // Align buttons evenly across row
              children: [
                SizedBox(
                  width: 90,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed("/filter");
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Text(
                      'Filter',
                      style: TextStyle(fontSize: 16, color: Color(0xFF8F8F8F)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 140,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed("/flowedetiles");
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    child: Text(
                      'Best sellers',
                      style: TextStyle(fontSize: 16, color: Color(0xFF8F8F8F)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 135,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    child: Text(
                      'Most Gifted',
                      style: TextStyle(fontSize: 16, color: Color(0xFF8F8F8F)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
