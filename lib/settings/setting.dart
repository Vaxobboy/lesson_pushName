import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  static const route = "/settings";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        // For things inside the AppBar ⇣
        foregroundColor: Colors.white,
        shadowColor: Colors.black,
        elevation: 10,
        title: const Text("Settings Page"),
      ),
    );
  }
}