import 'package:flutter/material.dart';
import 'data_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter REST API Demo',
      home: const DataScreen(),
    );
  }
}
