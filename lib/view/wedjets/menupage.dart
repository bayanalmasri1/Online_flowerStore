import 'package:app/constant.dart'; // Import the colors
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 200, bottom: 390, top: 100),
      child: Drawer(
        width: 350,
        shape: Border.all(color: AppColors.lightPrimaryColor), // Use lightPrimaryColor or darkPrimaryColor based on the theme
        backgroundColor: Theme.of(context).drawerTheme.backgroundColor, // Adjust based on theme
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            ListTile(
              title: Text('Flowers', style: TextStyle(color: Theme.of(context).textTheme.bodyLarge?.color)), // Use text color from theme
              onTap: () {
                Get.toNamed("/flowerPage");
              },
            ),
            ListTile(
              title: Text('Plants', style: TextStyle(color: Theme.of(context).textTheme.bodyLarge?.color)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Bouquet', style: TextStyle(color: Theme.of(context).textTheme.bodyLarge?.color)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Offers', style: TextStyle(color: Theme.of(context).textTheme.bodyLarge?.color)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Gifts', style: TextStyle(color: Theme.of(context).textTheme.bodyLarge?.color)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
