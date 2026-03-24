import 'package:flutter/material.dart';
import 'package:trendify/core/constants/app_constants.dart';
import 'package:trendify/core/constants/icon_constrans.dart';
import 'package:trendify/core/theme/app_text_styles.dart';

class TrendsNotFound extends StatelessWidget {
  const TrendsNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(IconConstrans.notFound),
        SizedBox(height: 32,),
        Text(AppConstants.trendsNotFound, style: AppTextStyles.h4),
        SizedBox(height: 32,),
        Text(AppConstants.trendsNotFoundBody, style: AppTextStyles.subtitle, textAlign: TextAlign.center,),
      ],
    );
  }
}
