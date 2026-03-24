import 'package:flutter/material.dart';
import 'package:trendify/core/constants/app_constants.dart';
import 'package:trendify/core/theme/app_colors.dart';
import 'package:trendify/core/theme/app_text_styles.dart';
import 'package:trendify/features/home/widgets/ProductBody.dart';
import 'package:trendify/features/home/widgets/ProductBottomNavBar.dart';

class Product extends StatefulWidget {
  String image;
  String productName;
  String price;
  String raiting;

  Product({
    super.key,
    required this.productName,
    required this.image,
    required this.price,
    required this.raiting,
  });

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        forceMaterialTransparency: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.arrow_back,
              size: 28,
              color: AppColors.textPrimary,
            ),
          ),
        ),
        title: Text(AppConstants.product, style: AppTextStyles.h4),
        centerTitle: true,
        actions: [
          GestureDetector(
            child: Icon(
              Icons.share_outlined,
              size: 28,
              color: AppColors.textPrimary,
            ),
          ),
          SizedBox(width: 16),
          GestureDetector(
            child: Icon(
              Icons.more_vert,
              size: 32,
              color: AppColors.textPrimary,
            ),
          ),
        ],
        actionsPadding: EdgeInsets.only(right: 24),
      ),

      body: Column(
        children: [
          ProductBody(productName: widget.productName, image: widget.image, price: widget.price, raiting: widget.raiting),
          ProductBottomNavBar(),
        ],
      ),
    );
  }
}