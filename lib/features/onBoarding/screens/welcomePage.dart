import 'package:flutter/material.dart';
import 'package:trendify/core/constants/app_constants.dart';
import 'package:trendify/core/constants/icon_constrans.dart';
import 'package:trendify/core/constants/image_constrants.dart';
import 'package:trendify/core/theme/app_colors.dart';
import 'package:trendify/core/theme/app_text_styles.dart';
import 'package:trendify/features/auth/screens/SignIn.dart';
import 'package:trendify/features/auth/screens/SignUp.dart';
import 'package:trendify/features/onBoarding/widgets/Buttons.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(ImageConstrants.green_logo),
              Column(
                children: [
                  Text(
                    AppConstants.welcomeTitle,
                    style: AppTextStyles.h3
                  ),
                  SizedBox(height: 12),
                  Text(
                    AppConstants.welcomeSubtitle,
                    style: AppTextStyles.subtitle
                  ),
                ],
              ),
              Column(
                children: [
                  socialButton(icon: IconConstrans.google, title: AppConstants.continueWithGoogle, onTap: (){}),
                  SizedBox(height: 20),
                  socialButton(icon: IconConstrans.apple, title: AppConstants.continueWithApple, onTap: (){}),
                  SizedBox(height: 20),
                  socialButton(icon: IconConstrans.facebook, title: AppConstants.continueWithFacebook, onTap: (){}),
                  SizedBox(height: 20),
                  socialButton(icon: IconConstrans.twitter, title: AppConstants.continueWithTwitter, onTap: (){}),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 58,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.transparent,
                        backgroundColor: AppColors.primary,
                        overlayColor: AppColors.primaryLight,
                      ),
                      child: Text(
                        AppConstants.signUp,
                        style: AppTextStyles.whiteBtn
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    height: 58,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
                      },
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.transparent,
                        backgroundColor: AppColors.primaryLight,
                        overlayColor: AppColors.primary,
                      ),
                      child: Text(
                        AppConstants.signIn,
                        style: AppTextStyles.primaryBtn
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(AppConstants.privacyPolicy, style: AppTextStyles.subtitle14,),
                  SizedBox(width: 12,),
                  Text("•", style: AppTextStyles.subtitle14,),
                  SizedBox(width: 12,),
                  Text(AppConstants.termsOfService, style: AppTextStyles.subtitle14,)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
