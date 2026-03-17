import 'package:flutter/material.dart';
import 'package:trendify/core/constants/app_constants.dart';
import 'package:trendify/core/constants/icon_constrans.dart';
import 'package:trendify/core/constants/image_constrants.dart';
import 'package:trendify/core/theme/app_colors.dart';
import 'package:trendify/core/theme/app_text_styles.dart';
import 'package:trendify/features/auth/widgets/notificationBtn.dart';
import 'package:trendify/features/home/screens/Category.dart';
import 'package:trendify/features/home/screens/Search.dart';
import 'package:trendify/features/home/widgets/CategoryTabBar.dart';
import 'package:trendify/features/home/widgets/ProductCardHorizantal.dart';
import 'package:trendify/features/home/widgets/ViewAll.dart';
import 'package:trendify/features/home/widgets/categoryCard.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 11,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          forceMaterialTransparency: true,
          leadingWidth: 100,
          leading: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Image.asset(
              ImageConstrants.green_logo,
              fit: BoxFit.contain,
              color: AppColors.primary,
            ),
          ),
          centerTitle: true,
          title: Text(AppConstants.deepSpace, style: AppTextStyles.h4),
          actions: [NotificationBtn(), SizedBox(width: 24)],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: ListView(
            children: [
              // Search
              GestureDetector(
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.grey300,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        IconConstrans.search,
                        color: AppColors.textHint,
                      ),
                      SizedBox(width: 12),
                      Text(
                        AppConstants.searchTrends,
                        style: AppTextStyles.inputHint,
                      ),
                    ],
                  ),
                ),

                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchPage()),
                  );
                },
              ),

              SizedBox(height: 20),

              // Banner
              Image.asset(ImageConstrants.homeBanner, width: double.maxFinite),

              SizedBox(height: 20),

              // Tabbar
              CategoryTabBar(),

              SizedBox(height: 20),
              Container(
                height: 268,
                child: ProductCardHorizantal(category: ""),
              ),
              SizedBox(height: 28),

              SizedBox(
                child: GridView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: categories.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.9,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                  ),
                  itemBuilder: (_, index) {
                    final category = categories[index];

                    return CategoryCard(
                      title: category.title,
                      image: category.image,
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryPage(product_category: category.title)));
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: 28),
              ViewAll(title: AppConstants.newArrival),
              SizedBox(height: 16),
              ProductCardHorizantal(category: "", priceUp: 200),
              SizedBox(height: 28),
              ViewAll(title: AppConstants.hotDealsThisWeek, onTap: (){}),
              SizedBox(height: 16),
              ProductCardHorizantal(category: "", priceDown: 199),
            ],
          ),
        ),
      ),
    );
  }
}
