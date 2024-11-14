import 'package:flutter/material.dart';
import 'package:portfolio/themes/app_theme.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Developer Portfolio',
      theme: appTheme,
      home: const HomeScreen(),
    );
  }
}
