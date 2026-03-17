import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:trendify/core/constants/app_constants.dart';
import 'package:trendify/core/constants/image_constrants.dart';
import 'package:trendify/core/theme/app_colors.dart';
import 'package:trendify/core/theme/app_text_styles.dart';
import 'package:trendify/features/onBoarding/screens/welcomePage.dart';

class Walkthroughs extends StatefulWidget {
  const Walkthroughs({super.key});

  @override
  State<Walkthroughs> createState() => _WalkthroughsState();
}

class _WalkthroughsState extends State<Walkthroughs> {
  int currentPage = 0;
  PageController _pageController = PageController(initialPage: 0);

  final List<WalkthroughItem> _pages = AppConstants.WalkthroughItems;

  void goToWelcome() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => WelcomePage()),
    );
  }

  void onNext() {
    if (currentPage < _pages.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {}
    ;
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Stack(
        children: [
          PageView.builder(
            itemCount: _pages.length,
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },

            itemBuilder: (_, int index) => Image.asset(_pages[index].image),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(
                top: 100,
                left: 24,
                right: 24,
                bottom: 24,
              ),
              width: double.infinity,
              height: 460,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImageConstrants.rectangle),
                  fit: BoxFit.cover,
                ),
              ),

              child: Column(
                children: [
                  Text(
                    _pages[currentPage].title,
                    style: AppTextStyles.h3,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 12),
                  Text(
                    _pages[currentPage].subtitle,
                    style: AppTextStyles.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 12),
                  SmoothPageIndicator(
                    controller: _pageController,
                    count: _pages.length,
                    effect: ExpandingDotsEffect(
                      activeDotColor: AppColors.primary,
                      dotWidth: 10,
                      dotHeight: 10,
                    ),
                  ),
                  Spacer(),
                  currentPage < _pages.length - 1
                      ? _buildNavBtns()
                      : _buildLastButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLastButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: goToWelcome,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          padding: const EdgeInsets.symmetric(vertical: 18),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: const Text(
          AppConstants.getStarted,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }

  Widget _buildNavBtns() {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 58,
            child: ElevatedButton(
              onPressed: goToWelcome,

              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryLight,
                shadowColor: Colors.transparent,
                overlayColor: AppColors.primary,
              ),

              child: Text(AppConstants.skip, style: AppTextStyles.primaryBtn),
            ),
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: SizedBox(
            height: 58,
            child: ElevatedButton(
              onPressed: onNext,

              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                shadowColor: Colors.transparent,
                overlayColor: AppColors.primaryLight,
              ),

              child: Text(
                AppConstants.continuee,
                style: AppTextStyles.whiteBtn,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
