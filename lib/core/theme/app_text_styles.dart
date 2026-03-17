import 'package:flutter/material.dart';
import 'package:trendify/core/theme/app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static const TextStyle h1 = TextStyle(
    fontSize: 48,
    color: AppColors.textPrimary,
    fontFamily: 'Urbanist',
    fontVariations: [
      FontVariation('wght', 700)
    ]
  );

  static const TextStyle h2 = TextStyle(
      fontSize: 40,
      color: AppColors.textPrimary,
      fontFamily: 'Urbanist',
      fontVariations: [
        FontVariation('wght', 700)
      ]
  );

  static const TextStyle h3 = TextStyle(
      fontSize: 32,
      color: AppColors.textPrimary,
      fontFamily: 'Urbanist',
      letterSpacing: 0,
      fontVariations: [
        FontVariation('wght', 700)
      ]
  );

  static const TextStyle h4 = TextStyle(
      fontSize: 24,
      color: AppColors.textPrimary,
      fontFamily: 'Urbanist',
      letterSpacing: 0,
      fontVariations: [
        FontVariation('wght', 700)
      ]
  );

  static const TextStyle bodyMedium = TextStyle(
      fontSize: 18,
      color: AppColors.textSecondary,
      fontFamily: 'Urbanist',
      fontVariations: [
        FontVariation('wght', 400)
      ]
  );

  static const TextStyle subtitle = TextStyle(
      fontSize: 18,
      color: AppColors.textGrey700,
      fontFamily: 'Urbanist',
      letterSpacing: 0.2,
      fontVariations: [
        FontVariation('wght', 400)
      ]
  );

  static const TextStyle subtitle14 = TextStyle(
      fontSize: 14,
      color: AppColors.textGrey700,
      fontFamily: 'Urbanist',
      fontVariations: [
        FontVariation('wght', 400)
      ]
  );

  // Brand

  static const TextStyle brand_name = TextStyle(
      fontSize: 40,
      color: AppColors.white,
      fontFamily: 'Urbanist',
      fontVariations: [
        FontVariation('wght', 700)
      ]
  );

  // Buttons

  static const TextStyle blackBtn = TextStyle(
      fontSize: 16,
      color: AppColors.black,
      fontFamily: 'Urbanist',
      fontVariations: [
        FontVariation('wght', 700)
      ]
  );

  static const TextStyle whiteBtn = TextStyle(
      fontSize: 16,
      color: AppColors.white,
      fontFamily: 'Urbanist',
      fontVariations: [
        FontVariation('wght', 700)
      ]
  );

  static const TextStyle primaryBtn = TextStyle(
      fontSize: 16,
      color: AppColors.primary,
      fontFamily: 'Urbanist',
      fontVariations: [
        FontVariation('wght', 700)
      ]
  );

  static const TextStyle inputTitle = TextStyle(
      fontSize: 18,
      color: AppColors.textPrimary,
      fontFamily: 'Urbanist',
      letterSpacing: 0.2,
      fontVariations: [
        FontVariation('wght', 600)
      ]
  );

  static const TextStyle inputHint = TextStyle(
      fontSize: 18,
      color: AppColors.textHint,
      fontFamily: 'Urbanist',
      letterSpacing: 0.2,
      fontVariations: [
        FontVariation('wght', 400)
      ]
  );

  static const TextStyle bodyXLarge500 = TextStyle(
      fontSize: 18,
      color: AppColors.textPrimary,
      fontFamily: 'Urbanist',
      letterSpacing: 0.2,
      fontVariations: [
        FontVariation('wght', 500)
      ]
  );

  static const TextStyle bodyXLarge500Green = TextStyle(
      fontSize: 18,
      color: AppColors.primary,
      fontFamily: 'Urbanist',
      letterSpacing: 0.2,
      fontVariations: [
        FontVariation('wght', 500)
      ]
  );

  static const TextStyle bodyXLarge600Green = TextStyle(
      fontSize: 18,
      color: AppColors.primary,
      fontFamily: 'Urbanist',
      letterSpacing: 0.2,
      fontVariations: [
        FontVariation('wght', 600)
      ]
  );

  static const TextStyle inputStatus = TextStyle(
      fontSize: 18,
      color: AppColors.primary,
      fontFamily: 'Urbanist',
      letterSpacing: 0.2,
      fontVariations: [
        FontVariation('wght', 600)
      ]
  );

  static const TextStyle pinStyle = TextStyle(
      fontSize: 24,
      color: AppColors.textPrimary,
      fontFamily: 'Urbanist',
      letterSpacing: 0,
      fontVariations: [
        FontVariation('wght', 700)
      ]
  );

  static const TextStyle grey700_16_400 = TextStyle(
      fontSize: 16,
      color: AppColors.textGrey700,
      fontFamily: 'Urbanist',
      fontVariations: [
        FontVariation('wght', 400)
      ]
  );

  static const TextStyle primary_16_400 = TextStyle(
      fontSize: 16,
      color: AppColors.primary,
      fontFamily: 'Urbanist',
      fontVariations: [
        FontVariation('wght', 400)
      ]
  );

  static const TextStyle black_16_600 = TextStyle(
      fontSize: 16,
      color: AppColors.textPrimary,
      fontFamily: 'Urbanist',
      fontVariations: [
        FontVariation('wght', 600)
      ]
  );

  static const TextStyle price_14_600_green = TextStyle(
      fontSize: 14,
      color: AppColors.primary,
      fontFamily: 'Urbanist',
      fontVariations: [
        FontVariation('wght', 600)
      ]
  );

  static const TextStyle selectedBottomNavBarItem = TextStyle(
      fontSize: 10,
      color: AppColors.primary,
      fontFamily: 'Urbanist',
      fontVariations: [
        FontVariation('wght', 700)
      ]
  );

  static const TextStyle unselectedBottomNavBarItem = TextStyle(
      fontSize: 10,
      color: AppColors.textHint,
      fontFamily: 'Urbanist',
      fontVariations: [
        FontVariation('wght', 500)
      ]
  );

  static const TextStyle selectedTabBar = TextStyle(
      fontSize: 16,
      color: AppColors.white,
      fontFamily: 'Urbanist',
      fontVariations: [
        FontVariation('wght', 600)
      ]
  );

  static const TextStyle unselectedTabBar = TextStyle(
      fontSize: 16,
      color: AppColors.textPrimary,
      fontFamily: 'Urbanist',
      fontVariations: [
        FontVariation('wght', 600)
      ]
  );
}