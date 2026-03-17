import 'package:flutter/material.dart';
import 'package:trendify/core/theme/app_colors.dart';
import 'package:trendify/core/theme/app_text_styles.dart';

class CategoryCard extends StatelessWidget {
  String title;
  String image;
  VoidCallback? onTap;

  CategoryCard({super.key, required this.title, required this.image, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.grey200,
          borderRadius: BorderRadius.circular(4)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    title,
                    style: AppTextStyles.black_16_600,
                  ),
                ),
              ],
            ),
            Expanded(child: Image.asset(image, height: double.maxFinite, fit: BoxFit.contain,)),
          ],
        ),
      )
    );
  }
}
