import 'package:flutter/material.dart';
import 'package:trendify/core/constants/app_constants.dart';
import 'package:trendify/features/home/widgets/PruductCard.dart';

import '../../../core/constants/icon_constrans.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';

class ProductCardHorizantal extends StatelessWidget {
  final String? productName;
  final String? categoryName;
  final int priceUp;
  final int priceDown;

  ProductCardHorizantal({
    super.key,
    this.productName = "",
    this.categoryName = "",
    this.priceUp = 0,
    this.priceDown = 90000,
  });

  @override
  Widget build(BuildContext context) {
    final filteredProducts = products.where((product) {
      final price = double.tryParse(product.price)!;

      final String category1 = product.category.toLowerCase();
      final String product1 = product.productName.toLowerCase();
      final String category2 = categoryName!.toLowerCase();
      final String product2 = productName!.toLowerCase();

      return category1.contains(category2) &&
              price >= priceUp &&
              price <= priceDown &&
          product1.contains(product2);
    }).toList();

    return SizedBox(
      height: 230,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: filteredProducts.length,
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          final product = filteredProducts[index];

          return GestureDetector(
            onTap: () {},
            child: ProductCard(productName: product.productName, image: product.image, price: product.price, fav: product.fav)
          );
        },
      ),
    );
  }
}
