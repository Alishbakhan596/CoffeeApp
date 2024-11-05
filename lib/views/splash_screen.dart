import 'package:flutter/material.dart';
import 'package:food/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Brown,
      body: Center(
        child: Image.asset(
          "assets/images/splashlogo.webp",
          height: 80,
          width: 90,
        ),
      ),
    );
  }
}
