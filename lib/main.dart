import 'package:app/constant.dart'; // استيراد ملف الألوان
import 'package:app/controller/controller.dart';
import 'package:app/model/flowercart.dart';
import 'package:app/model/locale/local.dart';
import 'package:app/view/flowerpages/flowerpage.dart';
import 'package:app/view/homepages/cartpage.dart';
import 'package:app/view/flowerpages/filterpage.dart';
import 'package:app/view/flowerpages/flowerdetiles.dart';
import 'package:app/view/homepages/homescreen.dart';
import 'package:app/view/paymentpages/paymentpage.dart';
import 'package:app/view/loginpages/login.dart';
import 'package:app/view/loginpages/singup.dart';
import 'package:app/view/loginpages/vrification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
    Get.put(CartController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Translate(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      
      // Define the light and dark themes using the centralized colors
      theme: ThemeData(
        primaryColor: AppColors.lightPrimaryColor,
        scaffoldBackgroundColor: AppColors.lightBackgroundColor,
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: AppColors.lightTextColor),
          bodyMedium: TextStyle(color: AppColors.lightTextColor),
        ),
      ),
      darkTheme: ThemeData(
        primaryColor: AppColors.darkPrimaryColor,
        scaffoldBackgroundColor: AppColors.darkBackgroundColor,
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: AppColors.darkTextColor),
          bodyMedium: TextStyle(color: AppColors.darkTextColor),
        ),
      ),
      themeMode: ThemeMode.system, // Follow system settings for dark/light mode

      // Define your app routes
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => const LogIn()),
        GetPage(name: "/signup", page: () => const Signup()),
        GetPage(name: "/verification", page: () => const Verification()),
        GetPage(name: "/homepage", page: () => const HomePage()),
        GetPage(name: "/filter", page: () => FilterScreen()),
        GetPage(name: "/cart", page: () => MyCartPage()),
        GetPage(name: "/flowerPage", page: () => FlowerPage(projects: flowerCart)),
        GetPage(name: "/flowedetiles", page: () => FlowerDetailsPage()),
        GetPage(name: "/pymant", page: () => const PaymentPage()),
      ],
    );
  }
}
