import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:trendify/features/home/screens/BottomNavBar.dart';
import 'package:trendify/features/home/screens/ScanningPhotoCamera.dart';
import 'package:trendify/features/onBoarding/screens/splashPage.dart';

late List<CameraDescription>  cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: BottomNavBar());
  }
}
