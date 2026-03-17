import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trendify/core/constants/app_constants.dart';
import 'package:trendify/core/constants/image_constrants.dart';
import 'package:trendify/core/theme/app_colors.dart';
import 'package:trendify/core/theme/app_text_styles.dart';
import 'package:trendify/features/onBoarding/screens/walkthroughs.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: AppConstants.splashDurationMinutes), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Walkthroughs()));
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
    );
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(ImageConstrants.white_logo),
                  SizedBox(height: 30),
                  Text(
                    AppConstants.app_name,
                    style: AppTextStyles.brand_name
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 130,
              left: 0,
              right: 0,
              child: Center(
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: CircularProgressIndicator(
                    color: AppColors.white,
                    strokeWidth: 8,
                    strokeCap: StrokeCap.round,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

