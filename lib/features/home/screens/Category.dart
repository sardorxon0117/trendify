import 'package:flutter/material.dart';
import 'package:trendify/core/constants/icon_constrans.dart';
import 'package:trendify/core/theme/app_colors.dart';
import 'package:trendify/core/theme/app_text_styles.dart';
import 'package:trendify/features/home/screens/Search.dart';
import 'package:trendify/features/home/widgets/ProductCardGrid.dart';

class CategoryPage extends StatelessWidget {
  String product_category;

  CategoryPage({super.key, required this.product_category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product_category, style: AppTextStyles.h4),
        centerTitle: true,
        forceMaterialTransparency: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchPage()),
              );
            },
            icon: Image.asset(
              IconConstrans.search,
              color: AppColors.black,
              scale: 0.8,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert, color: AppColors.textPrimary, size: 30),
          ),
          SizedBox(width: 24),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8, left: 24, right: 24),
        child: ProductCardsGrid(category: product_category),
      ),
    );
  }
}
