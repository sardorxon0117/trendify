import 'package:flutter/material.dart';
import 'package:trendify/core/theme/app_text_styles.dart';

class socialButton extends StatelessWidget {
  String icon;
  String title;
  VoidCallback? onTap;

  socialButton({
    super.key,
    required this.icon,
    required this.title,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 58,
      child: OutlinedButton(
        onPressed: onTap,
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(99),
          ),
          side: BorderSide(color: Colors.black12),
          foregroundColor: Colors.black12,
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Image.asset(icon),
            ),
            Center(
              child: Text(
                title,
                style: AppTextStyles.blackBtn
              ),
            ),
          ],
        ),
      ),
    );
  }
}
