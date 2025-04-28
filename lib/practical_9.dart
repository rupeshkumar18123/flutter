import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grid View',
      home: const MyGridView(),
    );
  }
}

class MyGridView extends StatelessWidget {
  const MyGridView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Grid View')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          children: const <Widget>[
            Card(child: Center(child: Text('One'))),
            Card(child: Center(child: Text('Two'))),
            Card(child: Center(child: Text('Three'))),
            Card(child: Center(child: Text('Four'))),
          ],
        ),
      ),
    );
  }
}
