import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Components',
      home: const UIForm(),
    );
  }
}

class UIForm extends StatefulWidget {
  const UIForm({super.key});
  @override
  State<UIForm> createState() => _UIFormState();
}

class _UIFormState extends State<UIForm> {
  final _formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final mobileController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Registration Form')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(children: [
            TextFormField(
              controller: usernameController,
              decoration: InputDecoration(hintText: "Username"),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your username';
                }
                return null;
              },
            ),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(hintText: "Email"),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your email';
                }
                return null;
              },
            ),
            TextFormField(
              controller: mobileController,
              decoration: InputDecoration(hintText: "Mobile"),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your mobile number';
                }
                return null;
              },
            ),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(hintText: "Password"),
              obscureText: true,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
            ),
            ElevatedButton(
              child: const Text('Submit'),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Process data.
                }
              },
            ),
          ]),
        ),
      ),
    );
  }
}
