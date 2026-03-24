import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:trendify/core/constants/app_constants.dart';
import 'package:trendify/core/constants/icon_constrans.dart';
import 'package:trendify/core/theme/app_colors.dart';
import 'package:trendify/core/theme/app_text_styles.dart';
import 'package:trendify/features/auth/screens/SignIn.dart';
import 'package:trendify/features/auth/widgets/Dialog.dart';
import 'package:trendify/features/auth/widgets/inputWidget.dart';
import 'package:trendify/features/home/screens/BottomNavBar.dart';
import 'package:trendify/features/onBoarding/widgets/Buttons.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  bool isShow = true;
  String showIcon = IconConstrans.hidePass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Icon(Icons.arrow_back, size: 28),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 24, vertical: 8),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(AppConstants.joinTrendifyToday, style: AppTextStyles.h3),
                  SizedBox(height: 10),
                  Text(
                    AppConstants.embarkFashionJourneyTailoredYou,
                    style: AppTextStyles.subtitle,
                  ),
                ],
              ),
              SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(AppConstants.email, style: AppTextStyles.inputTitle),
                  SizedBox(height: 10),
                  InputWidget(
                    prefixIcon: IconConstrans.message,
                    hintText: AppConstants.email,
                  ),
                  SizedBox(height: 20),
                  Text(AppConstants.password, style: AppTextStyles.inputTitle),
                  SizedBox(height: 10),
                  InputWidget(
                    prefixIcon: IconConstrans.lock,
                    hintText: AppConstants.password,
                    suffixIcon: showIcon,
                    isObscure: isShow,
                    onTap: () {
                      setState(() {
                        if (isShow) {
                          isShow = false;
                          showIcon = IconConstrans.showPass;
                        } else {
                          isShow = true;
                          showIcon = IconConstrans.hidePass;
                        }
                      });
                    },
                  ),
                  SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (t) {},
                        side: BorderSide(color: AppColors.primary, width: 2),
                      ),

                      Expanded(
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: AppConstants.iAgreeToTrendify,
                                style: AppTextStyles.bodyXLarge500,
                              ),
                              TextSpan(
                                text: AppConstants.termsConditions,
                                style: AppTextStyles.bodyXLarge500Green,
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {},
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12,),
                  Center(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: AppConstants.alreadyAccount,
                            style: AppTextStyles.bodyXLarge500,
                          ),
                          TextSpan(
                            text: AppConstants.signIn,
                            style: AppTextStyles.bodyXLarge500Green,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 1,
                          color: Colors.grey.shade300,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          AppConstants.or,
                          style: TextStyle(
                            color: AppColors.textGrey700,
                            fontSize: 18,
                          ),
                        ),
                      ),

                      Expanded(
                        child: Divider(
                          thickness: 1,
                          color: Colors.grey.shade300,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  socialButton(
                    icon: IconConstrans.google,
                    title: AppConstants.continueWithGoogle,
                  ),
                  SizedBox(height: 20),
                  socialButton(
                    icon: IconConstrans.apple,
                    title: AppConstants.continueWithApple,
                  ),
                  SizedBox(height: 20),
                  socialButton(
                    icon: IconConstrans.facebook,
                    title: AppConstants.continueWithFacebook,
                  ),
                  SizedBox(height: 20),
                  socialButton(
                    icon: IconConstrans.twitter,
                    title: AppConstants.continueWithTwitter,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20, left: 24, right: 24),
        child: SizedBox(
          width: double.infinity,
          height: 58,
          child: ElevatedButton(
            onPressed: () async {
              showLoadingDialog(context, AppConstants.signUp);
              await Future.delayed(Duration(seconds: 3));
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => BottomNavBar()), (Route<dynamic> route) => false);
            },
            style: ElevatedButton.styleFrom(
              shadowColor: Colors.transparent,
              backgroundColor: Color.fromRGBO(82, 143, 101, 1),
              overlayColor: Colors.white,
            ),
            child: Text(
              AppConstants.signUp,
              style: AppTextStyles.whiteBtn,
            ),
          ),
        ),
      ),
    );
  }
}
