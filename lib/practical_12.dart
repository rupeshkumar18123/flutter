import 'package:flutter/material.dart';
import 'data_screen.dart';
// (Reuses api_service.dart and data_screen.dart as in Practical 11)
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JSON Parsing Demo',
      home: const DataScreen(),
    );
  }
}
