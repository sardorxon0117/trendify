import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:trendify/core/constants/app_constants.dart';
import 'package:trendify/core/theme/app_colors.dart';
import 'package:trendify/core/theme/app_text_styles.dart';
import 'package:trendify/features/auth/screens/createNewPass.dart';

class EnterOTP extends StatefulWidget {
  const EnterOTP({super.key});

  @override
  State<EnterOTP> createState() => _EnterOTPState();
}

class _EnterOTPState extends State<EnterOTP> {
  int num = 60;

  @override
  void initState() {
    super.initState();
    secondss();
  }

  Future<void> secondss() async {
    setState(() {
      num = 60;
    });

    while (num > 0) {
      await Future.delayed(const Duration(seconds: 1));

      if (!mounted) return;

      setState(() {
        num--;
      });
    }
  }

  Color pinBorder = Colors.transparent;

  @override
  Widget build(BuildContext context) {

    final defaultPinTheme = PinTheme(
      width: 75,
      height: 65,
      textStyle: AppTextStyles.pinStyle,
      decoration: BoxDecoration(
        color: AppColors.grey300,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: pinBorder, width: 2),
      ),
    );

    final focusPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: AppColors.primary, width: 2),
    );

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
                  Text(
                    AppConstants.enterOTPCode,
                    style: AppTextStyles.h3,
                  ),
                  SizedBox(height: 10),
                  Text(
                    AppConstants.enterOTPCodeTitle,
                    style: AppTextStyles.subtitle,
                  ),
                ],
              ),
              SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Pinput(
                    length: 4,
                    defaultPinTheme: defaultPinTheme,
                    focusedPinTheme: focusPinTheme,
                    onCompleted: (pin) async {
                      setState(() {
                        pinBorder = AppColors.primary;
                      });
                      await Future.delayed(Duration(seconds: 2));
                      Navigator.push(context, MaterialPageRoute(builder: (context) => NewPassword()));
                    },
                  ),
                  SizedBox(height: 20),
                  RichText(text: TextSpan(
                    children: [
                      TextSpan(text: AppConstants.canResendCode, style: AppTextStyles.grey700_16_400),
                      TextSpan(text: "$num", style: AppTextStyles.primary_16_400),
                      TextSpan(text: AppConstants.seconds, style: AppTextStyles.grey700_16_400)
                    ]
                  )),
                  SizedBox(height: 20),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        secondss();
                      },
                      child: Text(
                        AppConstants.resendCode,
                        style: TextStyle(
                          color: AppColors.textHint,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
