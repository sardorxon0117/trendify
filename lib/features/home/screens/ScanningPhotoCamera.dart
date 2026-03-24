import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:trendify/main.dart';

class ScanningPhotoCamera extends StatefulWidget {
  const ScanningPhotoCamera({super.key});

  @override
  State<ScanningPhotoCamera> createState() => _ScanningPhotoCameraState();
}

class _ScanningPhotoCameraState extends State<ScanningPhotoCamera> {
  CameraController? controller;
  Future<void>? initializeControllerFuture;

  @override
  void initState() {
    super.initState();

    if (cameras.isNotEmpty) {
      controller = CameraController(
          cameras.first,
          ResolutionPreset.high,
          enableAudio: false
      );

      initializeControllerFuture = controller!.initialize();
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  Future<void> takePhoto() async {
    if (controller == null) return;

    try {
      await initializeControllerFuture;
      final XFile image = await controller!.takePicture();
    } catch(e) {
      debugPrint("Xatolik: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
