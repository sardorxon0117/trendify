import 'package:flutter/material.dart';

import '../../../core/constants/app_constants.dart';
import '../../../core/constants/icon_constrans.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';

class ViewAll extends StatelessWidget {
  String title;
  VoidCallback? onTap;
  ViewAll({
    super.key,
    required this.title,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(title, style: AppTextStyles.h4),
        GestureDetector(
          onTap: onTap,
          child: Row(
            children: [
              Text(
                AppConstants.viewAll,
                style: AppTextStyles.primaryBtn,
              ),
              SizedBox(width: 8),
              Image.asset(
                IconConstrans.right,
                color: AppColors.primary,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
