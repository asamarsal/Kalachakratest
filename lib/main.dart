import 'package:flutter/material.dart';
import 'package:kalachakra/pages/splashscreen.dart';

void main() {
  runApp(KalachakraApp());
}

class KalachakraApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
