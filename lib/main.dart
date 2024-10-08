import 'package:flutter/material.dart';
import 'package:menatl_health/core/theme.dart';
import 'package:menatl_health/features/meditation/presentation/pages/meditation_screen.dart';
import 'package:menatl_health/presentation/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: const MeditationScreen(),
    );
  }
}
