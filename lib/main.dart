
import 'package:flutter/material.dart';
import 'package:horizontal_scrolling/horizontal_scrolling.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BookScreen(),
    );
  }
}
