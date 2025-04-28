import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter P3',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Row and Column'),
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
      body: Column(children: <Widget>[
        Text('Row', style: TextStyle(fontSize: 25)),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(12.0),
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.lightBlue,
                ),
                child: const Text(
                  'Flutter',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15.0),
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.amber,
                ),
                child: const Text(
                  'Demo',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
        Text('Column', style: TextStyle(fontSize: 25)),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(12.0),
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.green,
                ),
                child: const Text(
                  'Flutter',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15.0),
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.teal,
                ),
                child: const Text(
                  'Demo',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
