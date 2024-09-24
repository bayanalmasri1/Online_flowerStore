
import 'package:app/constant.dart';
import 'package:app/view/wedjets/flowerwe.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
       final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: Column(
        children: [
        wedjetflower(),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8,left: 10),
                  child: Text(
                    'Name',
                    style: TextStyle(fontSize: 25, fontWeight:FontWeight.w500,color: isDarkMode? AppColors.darkTextColor : AppColors.lightTextColor  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Wrap(
                    spacing: 8,
                    children: [
                      FilterChipWidget(label: 'Lily'),
                      FilterChipWidget(label: 'Roses'),
                      FilterChipWidget(label: 'Orchids'),
                      FilterChipWidget(label: 'Daisies'),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.only(top: 8,left: 10),
                  child: Text(
                    'Category Of Flowers',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500,color:  isDarkMode? AppColors.darkTextColor : AppColors.lightTextColor),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Wrap(
                    spacing: 8,
                    children: [
                      FilterChipWidget(label: 'Perennials'),
                      FilterChipWidget(label: 'Annuals'),
                      FilterChipWidget(label: 'Bulbs'),
                      FilterChipWidget(label: 'Biennials'),
                      FilterChipWidget(label: 'Climbers'),
                      FilterChipWidget(label: 'Shrubs'),
                      FilterChipWidget(label: 'Succulents'),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Padding(
                  padding: EdgeInsets.only(top: 8,left: 10),
                  child: Text(
                    'Color',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500,color:  isDarkMode? AppColors.darkTextColor : AppColors.lightTextColor),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Wrap(
                    spacing: 8,
                    children: [
                      ColorFilterChip(color: Colors.green),
                      ColorFilterChip(color: Colors.pink),
                      ColorFilterChip(color: Colors.red),
                      ColorFilterChip(color: Colors.blue),
                      ColorFilterChip(color: Colors.purple),
                      ColorFilterChip(color: Colors.orange),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.only(top: 8,left: 10),
                  child: Text(
                    'Price',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500,color: isDarkMode? AppColors.darkTextColor : AppColors.lightTextColor),
                  ),
                ),
            
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Wrap(
                    spacing: 8,
                    children: [
                      FilterChipWidget(label: '10-30\$'),
                      FilterChipWidget(label: '30-50\$'),
                      FilterChipWidget(label: '50-100\$'),
                      FilterChipWidget(label: '100+'),
                    ],
                  ),
                ),
                SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    // تطبيق الفلتر هنا
                  },
                  child: Text('Done',style: TextStyle(color: Colors.white), ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:  isDarkMode? AppColors.darkTextColor : AppColors.lightTextColor,
                       
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

class FilterChipWidget extends StatefulWidget {
  final String label;

  FilterChipWidget({required this.label});

  @override
  _FilterChipWidgetState createState() => _FilterChipWidgetState();
}

class _FilterChipWidgetState extends State<FilterChipWidget> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(widget.label),
      selected: _isSelected,
      onSelected: (bool selected) {
        setState(() {
          _isSelected = selected;
        });
      },
      selectedColor: Colors.deepPurple[200],
    );
  }
}

class ColorFilterChip extends StatelessWidget {
  final Color color;

  ColorFilterChip({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.rectangle,
      ),
      width: 40,
      height: 40,
    );
  }
}
