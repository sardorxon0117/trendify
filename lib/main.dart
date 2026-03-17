import 'package:flutter/material.dart';
import 'package:trendify/features/home/screens/BottomNavBar.dart';
import 'package:trendify/features/onBoarding/screens/splashPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: BottomNavBar());
  }
}
