import 'package:flutter/material.dart';
import 'package:trendify/core/theme/app_colors.dart';
import 'package:trendify/core/theme/app_text_styles.dart';

class GreenBtn extends StatelessWidget {
  String title;
  VoidCallback? onTap;

  GreenBtn({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: double.maxFinite,
        child: ElevatedButton(
          onPressed: () {},
          child: Text(title, style: AppTextStyles.whiteBtn, textAlign: TextAlign.center,),
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            shadowColor: Colors.transparent,
            overlayColor: AppColors.primaryLight,
          ),
        ),
      ),
    );
  }
}

class WhiteBtn extends StatelessWidget {
  String title;
  VoidCallback? onTap;

  WhiteBtn({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: double.maxFinite,
        child: ElevatedButton(
          onPressed: () {},
          child: Text(title, style: AppTextStyles.primaryBtn, textAlign: TextAlign.center,),
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryLight,
            shadowColor: Colors.transparent,
            overlayColor: AppColors.primary,
          ),
        ),
      ),
    );
  }
}

class WhiteCircleBtn extends StatelessWidget {
  String icon;
  Color iconColor;
  VoidCallback? onTap;

  WhiteCircleBtn({
    super.key,
    required this.icon,
    this.onTap,
    this.iconColor = AppColors.primary,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: ElevatedButton(
        onPressed: () {},
        child: Image.asset(icon, color: iconColor),
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryLight,
          shadowColor: Colors.transparent,
          overlayColor: AppColors.primary,
          padding: EdgeInsets.zero
        ),
      ),
    );
  }
}
