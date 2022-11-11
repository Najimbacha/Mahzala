import 'package:flutter/material.dart';

import 'package:mahzalaaa/screens/home_screen.dart';
import 'package:mahzalaaa/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home: const HomeScreen(),
    );
  }
}
