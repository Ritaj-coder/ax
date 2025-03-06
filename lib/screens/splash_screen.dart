import 'package:flutter/material.dart';
import 'dart:async';
import '../colors.dart';
import 'onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
  static const String routename = "splash" ;
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 50),

          Center(
            child: Image.asset(
              'assets/app.png',
              width: 100,
              height: 100,
            ),
          ),

          Column(
            children: [
              Image.asset(
                'assets/route.png',
                width: 220,
              ),
              const SizedBox(height: 10),
              const Text(
                "Supervised by Mohamed Nabil",
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ],
      ),
    );
  }
}