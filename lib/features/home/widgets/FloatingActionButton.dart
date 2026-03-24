import 'package:flutter/material.dart';
import '../../../core/constants/app_constants.dart';
import '../../../core/constants/icon_constrans.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';

class FloatingActionButtonn extends StatelessWidget {
  VoidCallback? sortTap;
  VoidCallback? filterTap;

  FloatingActionButtonn({super.key, this.sortTap, this.filterTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      height: 53,
      width: 204,
      decoration: BoxDecoration(
          color: AppColors.grey300,
          boxShadow: [BoxShadow(color: AppColors.textSecondary, offset: Offset(0, 5), blurRadius: 15)],
          borderRadius: BorderRadius.circular(99)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: sortTap,
            child: Row(
              children: [
                Image.asset(IconConstrans.sort, color: AppColors.black,),
                SizedBox(width: 8,),
                Text(AppConstants.sort, style: AppTextStyles.blackBtn,)
              ],
            ),
          ),
          VerticalDivider(thickness: 2, color: AppColors.grey200,),
          GestureDetector(
            onTap: filterTap,
            child: Row(
              children: [
                Image.asset(IconConstrans.filter, color: AppColors.black,),
                SizedBox(width: 8,),
                Text(AppConstants.filter, style: AppTextStyles.blackBtn,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
