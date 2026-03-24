import 'package:flutter/material.dart';
import 'package:trendify/features/home/screens/Product.dart';

import '../../../core/constants/icon_constrans.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';

class ProductCard extends StatelessWidget {
  String image;
  String productName;
  String price;
  String fav;

  ProductCard({
    super.key,
    required this.productName,
    required this.image,
    required this.price,
    required this.fav,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Product(
              productName: productName,
              image: image,
              price: price,
              raiting: fav,
            ),
          ),
        );
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
                      image,
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
                                Text(fav, style: const TextStyle(fontSize: 10)),
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
              productName,
              style: AppTextStyles.black_16_600,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 2),
            Text("\$${price}", style: AppTextStyles.price_14_600_green),
          ],
        ),
      ),
    );
  }
}
