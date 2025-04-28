import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MyHomePage(title: 'My Intro using Flutter App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Display personal info
            const Text(
              'Name : - Nandan Bhimani',
              style: TextStyle(color: Colors.orange, fontSize: 18),
            ),
            const Text(
              '\nEnrollment No : - 92210103018',
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
            const Text(
              '\n Class : 6TC3 - C',
              style: TextStyle(color: Colors.green, fontSize: 18),
            ),
            const Text(
              '\n University : - Marwadi University',
              style: TextStyle(color: Colors.red, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
