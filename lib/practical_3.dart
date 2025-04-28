import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Buttons'),
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
        child: Column(children: <Widget>[
          Text('Types of Button in Flutter', style: TextStyle(fontSize: 25)),
          Container(
            margin: EdgeInsets.all(35),
            child: FloatingActionButton(
              onPressed: () {},
              child: Text('Float BTN'),
            ),
          ),
          Container(
            margin: EdgeInsets.all(25),
            child: OutlinedButton(
              onPressed: () {},
              child: Text('Outlined BTN'),
            ),
          ),
          Container(
            margin: EdgeInsets.all(25),
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Elevated BTN'),
            ),
          ),
          Container(
            margin: EdgeInsets.all(25),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.adb),
              iconSize: 40,
              color: Colors.green,
            ),
          ),
          Text('Rich Text in Flutter', style: TextStyle(fontSize: 25)),
          Container(
            padding: EdgeInsets.all(20),
            child: RichText(
              text: const TextSpan(
                text: 'This is RichText',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
