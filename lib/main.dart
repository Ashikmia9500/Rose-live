import 'package:flutter/material.dart';
import 'splash.dart';

void main() {
  runApp(const RoseLiveApp());
}

class RoseLiveApp extends StatelessWidget {
  const RoseLiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
