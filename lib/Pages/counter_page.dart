// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, prefer_final_fields, unused_element

import 'package:flutter/material.dart';

// H O W  T O  I M P O R T  A N D  U S E  C U S T O M  F O N T S
// final TextTheme customTextTheme = TextTheme(
//   displayMedium: TextStyle(
//     color: Colors.white,
//     fontFamily: 'ProtestRevolution-Regular',
//     fontWeight: FontWeight.bold,
//     fontSize: 18.0,
//   ),
// );

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  // V A R I A B L E
  int _counter = 0;

  // M E T H O D
  void _incrementCounter() {
    // rebuilds the widget
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        centerTitle: true,
        title: Text(
          'C O U N T E R',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.black87,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'P R E S S  T H E  C O U N T E R',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            ElevatedButton(
              onPressed: () {
                _incrementCounter();
              },
              child: Icon(
                Icons.add,
                color: Colors.black87,
                size: 40.0,
              ),
              // H O W  T O  S T Y L E  A N  E L E V A T E D  B U T T O N ?
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: Colors.white,
                // onPrimary: Colors.white, So, onPrimary == foregroundColor
                minimumSize: Size(100, 60),
                shape: CircleBorder(),
                padding: EdgeInsets.all(20.0),
              ),
            ),
            // H O W  T O  C O N V E R T  I N T  I N T O  S T R I N G
            SizedBox(
              height: 15.0,
            ),
            Text(
              _counter.toString(),
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
