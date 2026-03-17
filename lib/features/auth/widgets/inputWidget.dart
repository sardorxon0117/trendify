import 'package:flutter/material.dart';

import '../../../core/theme/app_text_styles.dart';

class InputWidget extends StatelessWidget {
  final String prefixIcon;
  final String hintText;
  final bool isObscure;
  final String? suffixIcon;
  final TextEditingController? value;
  final Color? borderColor;
  VoidCallback? onTap;

  InputWidget({
    super.key,
    required this.prefixIcon,
    required this.hintText,
    this.value,
    this.isObscure = false,
    this.suffixIcon,
    this.onTap,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor != null ? borderColor! : Colors.transparent),
        color: const Color.fromRGBO(250, 250, 250, 1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: TextField(
        controller: value,
        obscureText: isObscure,
        decoration: InputDecoration(
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: hintText,
          hintStyle: AppTextStyles.inputHint,
          suffixIcon: suffixIcon != null
              ? GestureDetector(
                  child: suffixIcon != null ? Image.asset(suffixIcon!) : null,
                  onTap: onTap,
                )
              : null,
          prefixIcon: Image.asset(prefixIcon),
          contentPadding: const EdgeInsets.symmetric(vertical: 20),
        ),
      ),
    );
  }
}
