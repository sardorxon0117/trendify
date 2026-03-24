import 'package:flutter/material.dart';
import 'package:trendify/core/theme/app_colors.dart';
import 'package:trendify/features/home/screens/Filter.dart';
import 'package:trendify/features/home/widgets/ModalBottomSheet.dart';

import '../../../core/constants/app_constants.dart';
import 'FloatingActionButton.dart';
import 'ProductCardGrid.dart';

class SearchProduct extends StatefulWidget {
  final String? productName;
  final String? categoryName;
  final int priceUp;
  final int priceDown;

  SearchProduct({
    super.key,
    this.productName = "",
    this.categoryName = "",
    this.priceUp = 0,
    this.priceDown = 90000,
  });

  @override
  State<SearchProduct> createState() => _SearchProductState();
}

class _SearchProductState extends State<SearchProduct> {


  String selectedSort = "Most Suitable";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: ProductCardsGrid(
        productName: widget.productName,
        categoryName: widget.categoryName,
      ),
      floatingActionButton: FloatingActionButtonn(
        filterTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => FilterPage()));},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
    );
  }
}


bool isProduct(
  String categoryName,
  String productName,
  int priceUp,
  int priceDown,
) {
  return products.any((product) {
    final price = double.tryParse(product.price) ?? 0;

    final category1 = product.category.toLowerCase();
    final product1 = product.productName.toLowerCase();
    final category2 = categoryName.toLowerCase();
    final product2 = productName.toLowerCase();

    return (category1.contains(category2) || product1.contains(product2)) &&
        price >= priceUp &&
        price <= priceDown;
  });
}
