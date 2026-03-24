import 'package:flutter/material.dart';
import 'package:trendify/core/constants/app_constants.dart';
import 'package:trendify/core/constants/icon_constrans.dart';
import 'package:trendify/core/theme/app_colors.dart';
import 'package:trendify/core/theme/app_text_styles.dart';

class FilterAppBar extends StatelessWidget {
  const FilterAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      height: 72,
      width: double.infinity,
      color: Colors.transparent,

      child: Row(
        children: [
          GestureDetector(
            child: Image.asset(IconConstrans.close, color: AppColors.black, width: 28,),
            onTap: (){Navigator.pop(context);},
          ),
          Expanded(
            child: Center(
              child: Text(AppConstants.filter, style: AppTextStyles.h4),
            ),
          ),
          SizedBox(width: 28,)
        ],
      ),
    );
  }
}
