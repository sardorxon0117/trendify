import 'package:flutter/material.dart';
import 'package:trendify/core/theme/app_colors.dart';

class ProductBody extends StatefulWidget {
  String image;
  String productName;
  String price;
  String raiting;

  ProductBody({
    super.key,
    required this.productName,
    required this.image,
    required this.price,
    required this.raiting,
  });

  @override
  State<ProductBody> createState() => _ProductBodyState();
}

class _ProductBodyState extends State<ProductBody> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsetsGeometry.only(top: 8, right: 24, left: 24, bottom: 0),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: double.maxFinite,
                  height: 573,
                  decoration: BoxDecoration(
                      color: AppColors.greyF6,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: AssetImage(widget.image,), fit: BoxFit.cover)
                  ),
                ),
                SizedBox(height: 20,),
                Text(widget.productName, textAlign: TextAlign.start,)
              ]
            ),
          ],
        ),
      ),
    );
  }
}
