import 'package:flutter/material.dart';
import 'package:trendify/core/constants/app_constants.dart';
import 'package:trendify/features/home/widgets/ViewAll.dart';

class FilterBody extends StatefulWidget {
  const FilterBody({super.key});

  @override
  State<FilterBody> createState() => _FilterBodyState();
}

class _FilterBodyState extends State<FilterBody> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
        child: ListView(
          children: [
            Column(
              children: [
                SeeAll(title: AppConstants.categories),
                SizedBox(height: 16,)
              ],
            ),
            SizedBox(height: 24,),

          ],
        ),
      ),
    );
  }
}
