import 'package:dars_4/Settings/settings_page.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static const route = "/prfile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text("Profile Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const Icon(Icons.abc),
            const Icon(Icons.gamepad),
            const Icon(Icons.install_mobile),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, SettingPage.route);
              },
                icon: const Icon(Icons.settings)),
          ],
        ),
      ),
    );
  }
}