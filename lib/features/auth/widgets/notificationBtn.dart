import 'package:flutter/material.dart';

import '../../../core/constants/icon_constrans.dart';
import '../../../core/theme/app_colors.dart';

class NotificationBtn extends StatelessWidget {
  VoidCallback? onTap;
  NotificationBtn({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(99),
            border: Border.all(color: AppColors.grey200)
        ),
        child: Stack(
          children: [
            Center(child: Image.asset(IconConstrans.notification, color: AppColors.black,)),
            Positioned(
              right: 15,
              top: 10,
              child: Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(99)
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
