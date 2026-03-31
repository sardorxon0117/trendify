import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:trendify/core/constants/AppSting.dart';
import 'package:trendify/features/home/screens/home.dart';

import '../../../core/constants/icon_constrans.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        elevation: 0,
        backgroundColor: Colors.white,
        selectedLabelStyle: AppTextStyles.selectedBottomNavBarItem,
        unselectedLabelStyle: AppTextStyles.unselectedBottomNavBarItem,
        selectedItemColor: AppColors.primary,

        onTap: (index) {
          setState(() {
            currentIndex = index;
          });

          pageController.animateToPage(
            index,
            duration: Duration(milliseconds: 4),
            curve: Curves.linear,
          );
        },

        currentIndex: currentIndex,

        items: [
          BottomNavigationBarItem(
            icon: currentIndex == 0
                ? Image.asset(IconConstrans.home_sharp)
                : Image.asset(IconConstrans.home_outlined),
            label: AppStrings.home.tr(),
          ),
          BottomNavigationBarItem(
            icon: currentIndex == 1
                ? Image.asset(IconConstrans.heart_sharp)
                : Image.asset(IconConstrans.heart_outlined),
            label: AppStrings.wishlist.tr(),
          ),
          BottomNavigationBarItem(
            icon: currentIndex == 2
                ? Image.asset(IconConstrans.bag_sharp)
                : Image.asset(IconConstrans.bag_outlined),
            label: AppStrings.cart.tr(),
          ),
          BottomNavigationBarItem(
            icon: currentIndex == 3
                ? Image.asset(IconConstrans.paper_sharp)
                : Image.asset(IconConstrans.paper_outlined),
            label: AppStrings.myOrder.tr(),
          ),
          BottomNavigationBarItem(
            icon: currentIndex == 4
                ? Image.asset(IconConstrans.profile_sharp)
                : Image.asset(IconConstrans.profile_outlined),
            label: AppStrings.account.tr(),
          ),
        ],
      ),

      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        children: [
          Home(),
          Container(color: Colors.red),
          Container(color: Colors.greenAccent),
          Container(color: Colors.yellow),
          Container(color: Colors.blue),
        ],
      ),
    );
  }
}
