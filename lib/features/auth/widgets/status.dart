import 'package:flutter/material.dart';

class statusW extends StatelessWidget {
  String status;
  Color statColor;
  bool isVisible;
  statusW({super.key, required this.status, required this.statColor, this.isVisible = false});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        decoration: BoxDecoration(
          color: statColor.withOpacity(0.08),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          children: [
            RotatedBox(quarterTurns: 2, child: Icon(Icons.info, color: statColor,)),
            SizedBox(width: 8),
            Text(
              status,
              style: TextStyle(
                color: statColor,
                fontSize: 14,
                fontFamily: 'Urbanist',
                fontVariations: [FontVariation('wght', 400)],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
