import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trendify/core/constants/app_constants.dart';
import '../../../core/constants/icon_constrans.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';
import 'PruductCard.dart';

class ProductCardsGrid extends StatelessWidget {
  final String? productName;
  final String? categoryName;
  final int priceUp;
  final int priceDown;

  ProductCardsGrid({
    super.key,
    this.productName = "  ",
    this.categoryName = "  ",
    this.priceUp = 0,
    this.priceDown = 90000,
  });

  @override
  Widget build(BuildContext context) {
    final filteredProducts = products.where((product) {
      final price = double.tryParse(product.price) ?? 0;

      final category1 = product.category.toLowerCase();
      final product1 = product.productName.toLowerCase();
      final category2 = categoryName?.toLowerCase() ?? "";
      final product2 = productName?.toLowerCase() ?? "";

      return (category1.contains(category2) ||
          product1.contains(product2)) &&
          price >= priceUp &&
          price <= priceDown;
    }).toList();

    return SizedBox(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.60,
          crossAxisCount: 2,
        ),
        scrollDirection: Axis.vertical,
        itemCount: filteredProducts.length,
        itemBuilder: (_, index) {
          final product = filteredProducts[index];

          return ProductCard(productName: product.productName, image: product.image, price: product.price, fav: product.fav);
        },
      ),
    );
  }
}
