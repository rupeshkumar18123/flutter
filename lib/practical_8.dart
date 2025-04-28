import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List View',
      home: const MyListView(),
    );
  }
}

class MyListView extends StatelessWidget {
  const MyListView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List View')),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: const <Widget>[
          ListTile(
            leading: Icon(Icons.android),
            title: Text('Android'),
            subtitle: Text('App Development'),
          ),
          ListTile(
            leading: Icon(Icons.javascript),
            title: Text('JavaScript'),
            subtitle: Text('Web Development'),
          ),
          ListTile(
            leading: Icon(Icons.css),
            title: Text('CSS'),
            subtitle: Text('Web Development'),
          ),
          ListTile(
            leading: Icon(Icons.html),
            title: Text('HTML'),
            subtitle: Text('Web Development'),
          ),
          ListTile(
            leading: Icon(Icons.apple),
            title: Text('Swift'),
            subtitle: Text('iOS Development'),
          ),
        ],
      ),
    );
  }
}
