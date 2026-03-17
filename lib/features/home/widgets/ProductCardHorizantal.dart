import 'package:flutter/material.dart';
import 'package:trendify/core/constants/app_constants.dart';

import '../../../core/constants/icon_constrans.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';

class ProductCardHorizantal extends StatelessWidget {
  final String category;
  final int priceUp;
  final int priceDown;

  const ProductCardHorizantal({
    super.key,
    required this.category,
    this.priceUp = 0,
    this.priceDown = 90000,
  });

  @override
  Widget build(BuildContext context) {
    final filteredProducts = products.where((product) {
      final price = double.tryParse(product.price) ?? 0;

      return product.category.contains(category) &&
          price >= priceUp &&
          price <= priceDown;
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
            onTap: (){
            },
            child: Container(
              width: 140,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: AppColors.grey300,
                      ),
                      child: Stack(
                        children: [
                          Image.asset(
                            product.image,
                            width: double.maxFinite,
                            height: double.maxFinite,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 20,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: AppColors.grey200,
                                    borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(IconConstrans.star),
                                      const SizedBox(width: 2),
                                      Text(
                                        product.fav,
                                        style: const TextStyle(fontSize: 10),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Image.asset(IconConstrans.like1),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    product.productName,
                    style: AppTextStyles.black_16_600,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 2),
                  Text(
                    "\$${product.price}",
                    style: AppTextStyles.price_14_600_green,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}