import 'package:flutter/material.dart';
import 'package:trendify/core/constants/app_constants.dart';
import 'package:trendify/core/constants/icon_constrans.dart';
import 'package:trendify/features/home/widgets/Buttons.dart';

import '../../../core/theme/app_colors.dart';

class ProductBottomNavBar extends StatelessWidget {
  const ProductBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      width: double.infinity,
      height: 106,
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: AppColors.greyF5)),
      ),

      child: Row(
        children: [
          WhiteCircleBtn(icon: IconConstrans.heart_outlined),
          SizedBox(width: 10,),
          WhiteBtn(title: AppConstants.buyNow),
          SizedBox(width: 10,),
          GreenBtn(title: AppConstants.addToCart)
        ],
      ),
    );
  }
}
