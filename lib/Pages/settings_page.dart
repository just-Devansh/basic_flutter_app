// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import "package:flutter/material.dart";

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  static const List<String> names = [
    'TM Sharub',
    'TM Amber',
    'TM Suryansh',
    'TM Arsh',
    'TM Siddhant',
    'TM Ravneet',
    'TM Vinaayak',
    'TM Dhruvi',
    'TM Manvi',
    'TM Yuvraj',
    'TM Anika',
    'TM Navya',
    'TM Harsh',
    'TM Harshit Chaubey',
    'TM Harshit Kumar',
    'TM Riya',
    'TM Arya',
    'TM Devansh',
    'TM Sneha',
    'TM Samarth',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black87,
        // I c o n T h e m e D a t a ( N E W )
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          'S E T T I N G S',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true, // ( N E W )
      ),

      // E X P E R I M E N T I N G  W I T H  L I S T - V I E W  B U I L D E R
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(
            names[index],
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}
