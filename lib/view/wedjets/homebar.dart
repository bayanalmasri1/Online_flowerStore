import 'package:app/constant.dart'; // Import the colors
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeBar extends StatelessWidget {
  const HomeBar({super.key});

  @override
  Widget build(BuildContext context) {
    // Determine the current theme
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Center(
      child: Stack(
        children: [
          Image.asset('assets/images/Rectangle 42.png'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Image.asset('assets/images/classic.png'),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Flora Haven",
                      style: GoogleFonts.montserrat(
                          fontSize: 40,
                          fontWeight: FontWeight.w800,
                          color: isDarkMode ? AppColors.darkTextColor : AppColors.lightTextColor),
                    )
                  ],
                ),
                SizedBox(
                  width: 250,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'search',
                      labelStyle: TextStyle(
                        color: isDarkMode ? AppColors.darkTextColor : AppColors.lightTextColor,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: BorderSide.none),
                      filled: true,
                      fillColor: isDarkMode ? AppColors.darkBackgroundColor : AppColors.lightBackgroundColor,
                      suffixIcon: Icon(Icons.search,
                          color: isDarkMode ? AppColors.darkTextColor : AppColors.lightTextColor),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 300),
                  child: IconButton(
                    icon: Icon(Icons.menu, color: isDarkMode ? AppColors.darkTextColor : AppColors.lightTextColor),
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                    },
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
