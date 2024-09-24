import 'package:app/constant.dart';
import 'package:app/view/homepages/cartpage.dart';
import 'package:app/view/wedjets/bottumbar.dart';
import 'package:app/view/wedjets/homebar.dart';
import 'package:app/view/homepages/settingpage.dart';
import 'package:app/view/wedjets/menupage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    MyCartPage(),
    SettingScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: MyCustomNavBar(
        currentIndex: _selectedIndex, 
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
        final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? AppColors.darkPrimaryColor :Colors.white ,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeBar(),
            SizedBox(height: 15),
            Text(
              "Hello Users",
              style: GoogleFonts.montserrat(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: isDarkMode ? AppColors.darkTextColor: AppColors.lightTextColor,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              width: 330,
              height: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 10, color: isDarkMode ? Color(0xFF333333) : Color(0xFFF3E9F5)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Explore our stunning collection of flowers and vibrant plants to brighten every occasion.',
                  style: GoogleFonts.montserrat(fontSize: 17, color: isDarkMode ? AppColors.darkTextColor: AppColors.lightTextColor,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 250),
              child: Text(
                'Offers',
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: isDarkMode ? AppColors.darkTextColor: AppColors.lightTextColor,
                ),
              ),
            ),
            Container(
              width: 365.88,
              height: 269.58,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
                border: Border.all(color: isDarkMode ? Color(0xFF333333) : Color(0xFFFFE3D6), width: 8),
                color: isDarkMode ? Color(0xFF333333) : Color.fromARGB(255, 244, 234, 229),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/motherflower.png',
                    height: 100,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Happy Mothers Day',
                    style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: isDarkMode ? AppColors.darkTextColor: AppColors.lightTextColor,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'On this special Occasion get 50% discount on the Artificial Silk Roses',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 365.88,
              height: 150, // Adjust the height based on your image dimensions
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/Pink.png',
                    height: 100,
                  ),
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Love Box',
                        style: GoogleFonts.montserrat(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: isDarkMode ? AppColors.darkTextColor: AppColors.lightTextColor,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Check Out The Special\nflower arrangement\nwith a luxurious chocolate box',
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      endDrawer: MenuPage(),
    );
  }
}



class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryTextColor = Theme.of(context).textTheme.bodyLarge?.color ?? Colors.black;
    
    return Center(
      child: Text(
        "Profile Screen",
        style: GoogleFonts.montserrat(fontSize: 24, fontWeight: FontWeight.bold, color: primaryTextColor),
      ),
    );
  }
}
