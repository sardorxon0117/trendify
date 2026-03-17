import 'package:flutter/material.dart';
import 'package:trendify/core/constants/app_constants.dart';
import 'package:trendify/core/constants/icon_constrans.dart';
import 'package:trendify/core/theme/app_colors.dart';
import 'package:trendify/core/theme/app_text_styles.dart';
import 'package:trendify/features/auth/screens/enterOTP.dart';
import 'package:trendify/features/auth/widgets/inputWidget.dart';
import 'package:trendify/features/auth/widgets/status.dart';
import 'package:validators/validators.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  String status = "";
  Color statColor = Colors.black;
  TextEditingController emailController = TextEditingController();
  late String email = emailController.text;
  bool? isStatus = false;
  Color inputBorderColor = Colors.transparent;

  @override
  void dispose() {
    super.dispose();
    isStatus = false;
    emailController;
  }


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
                  Text(
                    AppConstants.forgotYourPassword,
                    style: AppTextStyles.h3,
                  ),
                  SizedBox(height: 10),
                  Text(
                    AppConstants.forgotPasswordTitle,
                    style: AppTextStyles.subtitle,
                  ),
                ],
              ),
              SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppConstants.yourRegisteredEmail,
                    style: AppTextStyles.inputTitle,
                  ),
                  SizedBox(height: 10),
                  InputWidget(prefixIcon: IconConstrans.message, hintText: AppConstants.email, value: emailController, borderColor: inputBorderColor,),
                  SizedBox(height: 10),
                  statusW(status: status, statColor: statColor, isVisible: isStatus!,)
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
              setState(() {
                statColor = Colors.black;
                status = AppConstants.chesking;
                isStatus = true;
              });
              String email = emailController.text.trim();
              await Future.delayed(Duration(seconds: 1));
              if (email.length < 1) {
                setState(() {
                  status = AppConstants.fieldEmpty;
                  statColor = Colors.red;
                  inputBorderColor = Colors.red;
                });
              } else if (!isEmail(email)) {
                setState(() {
                  status = AppConstants.thisNotEmail;
                  statColor = Colors.red;
                  inputBorderColor = Colors.red;
                });
              } else {
                setState(() {
                  status = AppConstants.correctEmail;
                  statColor = AppColors.primary;
                  inputBorderColor = AppColors.primary;
                });
                await Future.delayed(Duration(seconds: 1));
                Navigator.push(context, MaterialPageRoute(builder: (context) => EnterOTP()));
              }
            },
            style: ElevatedButton.styleFrom(
              shadowColor: Colors.transparent,
              backgroundColor: Color.fromRGBO(82, 143, 101, 1),
              overlayColor: Colors.white,
            ),
            child: Text(
              AppConstants.sendOTPCode,
              style: AppTextStyles.whiteBtn,
            ),
          ),
        ),
      ),
    );
  }
}
