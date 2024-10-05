import 'package:app/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:app/constant.dart';

class MyCartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CartController cartController = Get.find<CartController>();
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ?  AppColors.darkPrimaryColor:AppColors.lightBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(Icons.arrow_back_ios),
                  ),
                ),
                Text(
                  'My Cart',
                  style: GoogleFonts.montserrat(
                    fontSize: 32,
                    color: isDarkMode ? AppColors.darkTextColor : AppColors.lightTextColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:6),
                      child: Image.asset('assets/images/Ellipse 33.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 50),
                      child: Image.asset('assets/images/mycart.png'),
                    )
                    ])
              ],
            ),
            Column(
              children: cartController.getProduct.map((item) {
                return CartItemWidget(itemName: item.title ?? 'Item Name');
              }).toList(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                color: isDarkMode ? AppColors.darkTextColor : AppColors.lightTextColor,
                thickness: 2,
              ),
            ),

            PriceDetails(),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange[100],
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                onPressed: () {
                  Get.toNamed("/pymant");
                },
                child: Text(
                  'Continue',
                  style: TextStyle(color: isDarkMode ? AppColors.darkTextColor : AppColors.lightTextColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CartItemWidget extends StatelessWidget {
  final String itemName;

  CartItemWidget({required this.itemName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        width: 290,
        height: 130,
        margin: EdgeInsets.only(bottom: 10.0),
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.blue[50],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Order: $itemName',
              style: TextStyle(fontSize: 16),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: IconButton(
                    icon: Icon(Icons.delete, color: Colors.red, size: 25),
                    onPressed: () {
                      // وظيفة حذف المنتج هنا
                    },
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.add, color: Colors.green),
                  onPressed: () {
                    // وظيفة إضافة منتج آخر هنا
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PriceDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CartController cartController = Get.find<CartController>();

    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(
            'Address: Dummar street A bulding number 25',
            style: TextStyle(fontSize: 16),
          ),
        
          Text(
            'Delivery: 20\$',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'Taxes: 15\$',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'Total Price ${cartController.totalPrice + 35}\$', 
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
