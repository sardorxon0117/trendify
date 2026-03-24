import 'package:flutter/material.dart';
import 'package:trendify/core/theme/app_colors.dart';
import 'package:trendify/features/home/widgets/Buttons.dart';

class FilterBottomNavBar extends StatelessWidget {
  const FilterBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 102,
      width: double.infinity,
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: AppColors.grey200)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          WhiteBtn(title: "Reset"),
          SizedBox(width: 16),
          GreenBtn(title: "Apply"),
        ],
      ),
    );
  }
}
