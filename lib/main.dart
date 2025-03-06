import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'colors.dart';
import 'screens/ProfileScreen.dart';
import 'custom_bottom_nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Movie App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.black,
        scaffoldBackgroundColor: AppColors.black,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
        ),
      ),
      initialRoute: SplashScreen.routename,
      routes: {
        SplashScreen.routename : (context) => SplashScreen(),
        CustomBottomNavBar.routename : (context) => CustomBottomNavBar(),

      },
    );
  }
}
