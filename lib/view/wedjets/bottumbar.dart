import 'package:app/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class MyCustomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  MyCustomNavBar({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SnakeNavigationBar.color(
      backgroundColor: AppColors.lightPrimaryColor,
      behaviour: SnakeBarBehaviour.pinned, 
      snakeShape: SnakeShape.circle,        
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      padding: EdgeInsets.all(8),
      snakeViewColor: Colors.purple,         // Active tab color
      selectedItemColor: SnakeShape.circle == SnakeShape.indicator
          ? Colors.purple
          : null,
      unselectedItemColor: Colors.grey,
      currentIndex: currentIndex,
      onTap: onTap, // Pass the onTap callback to handle tab selection
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_basket), label: 'Cart'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
    );
  }
}
