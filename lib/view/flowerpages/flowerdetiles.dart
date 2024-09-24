import 'package:app/view/wedjets/homebar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class FlowerDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeBar(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/payment.png', // رابط لصورة الزهرة
                          height: 150,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Phalaenopsis White Orchid Steam',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Price: 20\$',
                          style: TextStyle(fontSize: 16, color: Colors.green),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
            
                  // Color Options
                  Text(
                    'Color',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      _buildColorOption(Colors.white),
                      _buildColorOption(Colors.pink),
                      _buildColorOption(Colors.purple),
                    ],
                  ),
                  SizedBox(height: 16),
            
                  // Flower Information
                  _buildInfoSection(
                    'Flower information',
                    'White orchids are elegant and timeless flowers that symbolize purity, beauty, and refinement. Known for their pristine white petals and intricate blooms, they are a favorite in both weddings, anniversaries, and other special occasions.',
                  ),
            
                  // How to Take Care of it
                  _buildInfoSection(
                    'How to Take care of it',
                    'Place your orchid in bright, indirect light and maintain a temperature between 65-75°F. Water weekly, allowing the medium to dry slightly, and maintain 50-70% humidity. Use orchid fertilizer monthly and repot every 1-2 years with specialized medium. Prune dead blooms and check regularly for pests to keep it healthy.',
                  ),
            
                  SizedBox(height: 16),
            
                  // Buttons for Add to Basket and Buy Now
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                       Get.toNamed( "/cart");
                          },
                          style: ElevatedButton.styleFrom(
                            shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0)
                            ) ,
                            backgroundColor: Colors.deepPurple,
                          ),
                          child: Text('Add To Basket',style: TextStyle(color: Colors.white)),
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                           Get.toNamed("/pymant");
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFF6E1D8),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(0), // لجعل الأزرار مربعة
                            ),
                            minimumSize: Size(double.infinity, 50),
                          ),
                          child: Text('Buy Now'),
                        ),
                      ),
                    ],
                  ),
            
                  SizedBox(height: 24),
            
                  // Reviews Section
                  Text(
                    'Reviews',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
            
                  _buildReview('User Name', 'Date Of Review',
                      'such a flower i love having it in my living room', 5),
                  _buildReview('User Name', 'Date Of Review', 'beautiful', 4),
                  _buildReview(
                      'User Name', 'Date Of Review', 'glad i bought it', 4.5),
            
                  SizedBox(height: 24),
            
                  // Add Comment Section
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Add Comment',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
  
          ],
        ),
      ),
    );
  }

  Widget _buildColorOption(Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey.shade400),
        ),
      ),
    );
  }

  Widget _buildInfoSection(String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(
          content,
          style: TextStyle(fontSize: 16, color: Colors.grey[600]),
        ),
        SizedBox(height: 16),
      ],
    );
  }

  Widget _buildReview(
      String userName, String date, String reviewText, double rating) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              userName,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              date,
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
          ],
        ),
        SizedBox(height: 4),
        Text(reviewText),
        Row(
          children: List.generate(5, (index) {
            return Icon(
              index < rating ? Icons.star : Icons.star_border,
              color: Colors.yellow[700],
            );
          }),
        ),
        SizedBox(height: 16),
    
      ],
      
    );
  }
}
