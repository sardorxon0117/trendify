import 'package:flutter/material.dart';
import 'package:trendify/core/constants/app_constants.dart';
import 'package:trendify/core/theme/app_colors.dart';
import 'package:trendify/core/theme/app_text_styles.dart';
import 'package:trendify/features/home/widgets/ProductCardHorizantal.dart';
import 'package:trendify/features/home/widgets/ViewAll.dart';


class ResentSearch extends StatefulWidget {
  const ResentSearch({super.key});

  @override
  State<ResentSearch> createState() => _ResentSearchState();
}

class _ResentSearchState extends State<ResentSearch> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: [
        ResentSearches(),
        SizedBox(height: 28,),
        ViewAll(title: AppConstants.hotDealsThisWeek),
        SizedBox(height: 16,),
        ProductCardHorizantal()
      ],
    );
  }
}



class ResentSearches extends StatefulWidget {
  const ResentSearches({super.key});

  @override
  State<ResentSearches> createState() => _ResentSearchesState();
}

class _ResentSearchesState extends State<ResentSearches> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppConstants.recentSearches,
                  style: AppTextStyles.black_s20_w700,
                ),
                GestureDetector(child: Icon(Icons.close, color: AppColors.textGrey800), onTap: (){},),
              ],
            ),
          ),
          SizedBox(height: 16),
          Divider(color: AppColors.grey200),
          SizedBox(height: 16),
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            separatorBuilder: (BuildContext context, int index) =>
                SizedBox(height: 16),
            itemCount: recentSearches.length,
            itemBuilder: (_, index) {
              final recent = recentSearches[index];

              return Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      recent,
                      style: AppTextStyles.grey_s20_w500,
                    ),
                    GestureDetector(child: Icon(Icons.close, color: AppColors.textGrey800), onTap: (){},),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

List<String> recentSearches = ["Hoodie for Men", "Nike", "Polo Shirt"];
