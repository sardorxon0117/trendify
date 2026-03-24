import 'package:flutter/material.dart';
import 'package:trendify/core/theme/app_colors.dart';
import 'package:trendify/features/home/widgets/FilterAppBar.dart';
import 'package:trendify/features/home/widgets/FilterBody.dart';
import 'package:trendify/features/home/widgets/FilterBottomNavBar.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        bottom: false,
        left: false,
        right: false,
        child: Column(
          children: [
            FilterAppBar(),
            FilterBody(),
            FilterBottomNavBar()
          ],
        ),
      ),
    );
  }
}
