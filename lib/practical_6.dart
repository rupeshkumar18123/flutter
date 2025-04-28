import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Components 2',
      home: const UIComponents(),
    );
  }
}

class UIComponents extends StatefulWidget {
  const UIComponents({super.key});
  @override
  State<UIComponents> createState() => _UIComponentsState();
}

class _UIComponentsState extends State<UIComponents> {
  bool _switchValue = false;
  String _radioValue = 'male';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('More Components')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(children: [
          SwitchListTile(
            title: const Text('Enable feature'),
            value: _switchValue,
            onChanged: (bool val) => setState(() => _switchValue = val),
          ),
          ListTile(
            title: const Text('Male'),
            leading: Radio<String>(
              value: 'male',
              groupValue: _radioValue,
              onChanged: (String? val) {
                setState(() {
                  _radioValue = val!;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Female'),
            leading: Radio<String>(
              value: 'female',
              groupValue: _radioValue,
              onChanged: (String? val) {
                setState(() {
                  _radioValue = val!;
                });
              },
            ),
          ),
          Image.network(
            'https://via.placeholder.com/150',
            height: 100,
            width: 100,
          ),
        ]),
      ),
    );
  }
}
