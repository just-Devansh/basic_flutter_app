// ignore_for_file: prefer_const_constructors, duplicate_import

import 'package:basic_ui_app/Pages/counter_page.dart';
import 'package:basic_ui_app/Pages/home_page.dart';
import 'package:basic_ui_app/Pages/settings_page.dart';
import 'package:basic_ui_app/Pages/profile_page.dart';
import 'package:basic_ui_app/Pages/textfield_page.dart';
import 'package:flutter/material.dart';

// With this app, I intend to learn UI and Routing
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),

      // R O U T E S ( N A V I G A T I O N . P U S H N A M E D)
      routes: {
        // Resolved 'INVALID CONST' error in routes by removing const before MaterialApp()

        '/settingspage': (context) => SettingsPage(),
        '/homepage': (context) => HomePage(),
        '/profilepage': (context) => ProfilePage(),
        '/counterpage': (context) => CounterPage(),
        '/textfieldpage': (context) => TextFieldPage(),
      },
    );
  }
}
