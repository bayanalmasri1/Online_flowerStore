import 'package:app/controller/controller.dart';
import 'package:app/model/flowercart.dart';
import 'package:app/view/wedjets/flowerwe.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:app/constant.dart';


class FlowerPage extends StatelessWidget {
  final List<Project> projects;

  const FlowerPage({super.key, required this.projects});

  @override
  Widget build(BuildContext context) {
    final CartController cartController = Get.put(CartController());

    return Scaffold(
      body: Column(
        children: [
          // Custom widget you are using for the flower section header
          wedjetflower(),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(15.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // عدد الأعمدة
                crossAxisSpacing: 10, // المسافة بين الأعمدة
                mainAxisSpacing: 10, // المسافة بين الصفوف
                childAspectRatio: 0.6, // نسبة العرض إلى الارتفاع لكل عنصر
              ),
              itemCount: projects.length,
              itemBuilder: (context, index) {
                return FlowerGridItem(project: projects[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class FlowerGridItem extends StatelessWidget {
  final Project project;

  const FlowerGridItem({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    final CartController cartController = Get.find<CartController>();
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Card(
      color: isDarkMode ? AppColors.darkPrimaryColor : AppColors.lightPrimaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
        ),
      ),
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  project.image ?? '', // صورة المنتج
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Column(
              children: [
                Text(
                  project.title ?? 'Item Name',
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: isDarkMode ? AppColors.darkTextColor : AppColors.lightTextColor,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Price: ${project.price}',
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    color: Colors.grey[700],
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: 120,
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {
                      cartController.add(project);
                      Get.snackbar(
                        " My cart",
                        "${project.title} Add to Cart",
                        snackPosition: SnackPosition.BOTTOM,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:Color(0xFFF3E9F5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Text(
                      'Add to cart',
                      style: TextStyle(fontSize: 12),
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
