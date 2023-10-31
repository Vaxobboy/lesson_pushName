import 'package:dars_4/Home/home_page.dart';
import 'package:dars_4/Profile/profile_page.dart';
import 'package:dars_4/Settings/settings_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      initialRoute: HomePage.route,
      routes: {
        HomePage.route: (context) => const HomePage(),
        SettingPage.route: (context) => const SettingPage(),
        ProfilePage.route: (context) => const ProfilePage(),
      },
    );
  }
}