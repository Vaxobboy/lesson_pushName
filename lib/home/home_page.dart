import 'package:dars_4/Profile/profile_page.dart';
import 'package:dars_4/Settings/settings_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const route = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("I'm Home Page"),
            Text("Hello"),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "a",
              backgroundColor: Colors.red,
              onPressed: () {
                debugPrint("O'tkazishdan Oldin");
                // Navigator.push(
                //     context,
                //   MaterialPageRoute(
                //       builder: (context) => const SettingPage(),
                //   ),
                // );
                Navigator.pushNamed(context, SettingPage.route);
                debugPrint("O'tkazishdan keyin");
              },
              child: const Icon(Icons.settings),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: "b",
            backgroundColor: Colors.greenAccent,
              child: const Icon(Icons.person),
              onPressed: () {
                debugPrint("O'tkazishdan Oldin");
                Navigator.push(
                    context,
                  MaterialPageRoute(
                      builder: (context) => const ProfilePage(),
                  ),
                );
              }
          )
        ],
      ),
    );
  }
}