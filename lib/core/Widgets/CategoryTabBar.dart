import 'package:flutter/material.dart';
import 'package:trendify/core/constants/app_constants.dart';
import 'package:trendify/core/theme/app_colors.dart';
import 'package:trendify/core/theme/app_text_styles.dart';

class CategoryTabBar extends StatefulWidget {
  CategoryTabBar({super.key});

  @override
  State<CategoryTabBar> createState() => _CategoryTabBarState();
}

class _CategoryTabBarState extends State<CategoryTabBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemBuilder: (_, index) {
          final category = categories[index];

          return GestureDetector(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              decoration: selectedIndex == index
                  ? BoxDecoration(
                      borderRadius: BorderRadius.circular(99),
                      color: AppColors.primary,
                    )
                  : BoxDecoration(
                      borderRadius: BorderRadius.circular(99),
                      border: Border.all(color: AppColors.grey100),
                    ),
              child: Center(
                child: Text(
                  category.title,
                  style: selectedIndex == index
                      ? AppTextStyles.selectedTabBar
                      : AppTextStyles.unselectedTabBar,
                ),
              ),
            ),
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
          );
        },
      ),
    );
  }
}
