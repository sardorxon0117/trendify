import 'package:flutter/material.dart';
import 'package:trendify/core/constants/app_constants.dart';
import 'package:trendify/core/constants/icon_constrans.dart';
import 'package:trendify/core/theme/app_colors.dart';
import 'package:trendify/core/theme/app_text_styles.dart';
import 'package:trendify/features/auth/screens/resetPasswordSuccessful.dart';
import 'package:trendify/features/auth/widgets/inputWidget.dart';
import 'package:trendify/features/auth/widgets/status.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  String status = "";
  Color statColor = Colors.black;
  bool isShow1 = true;
  bool isShow2 = true;
  String showIcon1 = IconConstrans.hidePass;
  String showIcon2 = IconConstrans.hidePass;
  TextEditingController txt1 = TextEditingController();
  TextEditingController txt2 = TextEditingController();
  Color inputBorder = Colors.transparent;
  bool isStatus = false;



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
                    AppConstants.secureYourAccount,
                    style: AppTextStyles.h3,
                  ),
                  SizedBox(height: 10),
                  Text(
                    AppConstants.secureYourAccountTitle,
                    style: AppTextStyles.subtitle,
                  ),
                ],
              ),
              SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppConstants.newPassword,
                    style: AppTextStyles.inputTitle,
                  ),
                  SizedBox(height: 10),
                  InputWidget(
                    prefixIcon: IconConstrans.lock,
                    hintText: AppConstants.password,
                    suffixIcon: showIcon1,
                    isObscure: isShow1,
                    value: txt1,
                    borderColor: inputBorder,
                    onTap: () {
                      setState(() {
                        if (isShow1) {
                          isShow1 = false;
                          showIcon1 = IconConstrans.showPass;
                        } else {
                          isShow1 = true;
                          showIcon1 = IconConstrans.hidePass;
                        }
                      });
                    },
                  ),
                  SizedBox(height: 20),
                  Text(
                    AppConstants.confirmNewPassword,
                    style: AppTextStyles.inputTitle,
                  ),
                  SizedBox(height: 10),
                  InputWidget(
                    prefixIcon: IconConstrans.lock,
                    hintText: AppConstants.password,
                    suffixIcon: showIcon2,
                    borderColor: inputBorder,
                    isObscure: isShow2,
                    value: txt2,
                    onTap: () {
                      setState(() {
                        if (isShow2) {
                          isShow2 = false;
                          showIcon2 = IconConstrans.showPass;
                        } else {
                          isShow2 = true;
                          showIcon2 = IconConstrans.hidePass;
                        }
                      });
                    },
                  ),
                  SizedBox(height: 20),
                  statusW(status: status, statColor: statColor, isVisible: isStatus,),
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
              String input1 = txt1.text.trim();
              String input2 = txt2.text.trim();
              print(input1);
              setState(() {
                statColor = Colors.black;
                status = AppConstants.chesking;
                isStatus = true;
              });
              await Future.delayed(Duration(seconds: 1));
              if (input1.length < 8) {
                setState(() {
                  status = AppConstants.longPasswordCharacter;
                  statColor = Colors.red;
                  inputBorder = Colors.red;
                });
              } else if (input1 != input2) {
                setState(() {
                  status = AppConstants.passwordNotMatch;
                  statColor = Colors.red;
                  inputBorder = Colors.red;
                });
              } else {
                setState(() {
                  status = AppConstants.correctPassword;
                  statColor = AppColors.primary;
                  inputBorder = AppColors.primary;
                });
                await Future.delayed(Duration(seconds: 1));
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => ResetPasswordSuccessfuleset()),
                      (Route<dynamic> route) => false,
                );
              }
            },
            style: ElevatedButton.styleFrom(
              shadowColor: Colors.transparent,
              backgroundColor: Color.fromRGBO(82, 143, 101, 1),
              overlayColor: Colors.white,
            ),
            child: Text(
              AppConstants.saveNewPassword,
              style: AppTextStyles.whiteBtn,
            ),
          ),
        ),
      ),
    );
  }
}
