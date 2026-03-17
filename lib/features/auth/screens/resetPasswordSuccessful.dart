import 'package:flutter/material.dart';
import 'package:trendify/core/constants/app_constants.dart';
import 'package:trendify/core/constants/image_constrants.dart';
import 'package:trendify/core/theme/app_text_styles.dart';
import 'package:trendify/features/home/screens/BottomNavBar.dart';
import 'package:trendify/features/home/screens/home.dart';

class ResetPasswordSuccessfuleset extends StatelessWidget {
  const ResetPasswordSuccessfuleset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImageConstrants.savepass),
            SizedBox(height: 40,),
            Text(AppConstants.you_reAllSet, style: AppTextStyles.h3),
            SizedBox(height: 20,),
            Text(AppConstants.you_reAllSetTitle, textAlign: TextAlign.center, style: AppTextStyles.subtitle),
          ],
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20, left: 24, right: 24),
        child: SizedBox(
          width: double.infinity,
          height: 58,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => BottomNavBar()), (Route<dynamic> route) => false);
            },
            style: ElevatedButton.styleFrom(
              shadowColor: Colors.transparent,
              backgroundColor: Color.fromRGBO(82, 143, 101, 1),
              overlayColor: Colors.white,
            ),
            child: Text(
              AppConstants.goToHomepage,
              style: AppTextStyles.whiteBtn,
            ),
          ),
        ),
      ),
    );
  }
}
