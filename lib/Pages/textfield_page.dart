// ignore_for_file: unused_import, prefer_const_constructors, sort_child_properties_last

import "package:flutter/material.dart";

class TextFieldPage extends StatefulWidget {
  const TextFieldPage({super.key});

  @override
  State<TextFieldPage> createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  // text editing controller to access what the user typed
  TextEditingController myController = TextEditingController();

  String greetingMessage = "";
  // M E T H O D
  void greetUser() {
    String userName = myController.text;
    setState(() {
      greetingMessage = 'Hello, $userName!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.black87,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          'T E X T - F I E L D',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        // H O W  T O  T A K E  U S E R - I N P U T
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                greetingMessage,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // T E X T - F I E L D  W I D G E T
              TextField(
                cursorColor: Colors.white,
                style: TextStyle(
                  color: Colors.white,
                ),
                controller: myController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Type your name..',
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    )),
              ),
              SizedBox(
                height: 12.0,
              ),
              ElevatedButton(
                onPressed: greetUser,
                child: Text(
                  'Tap',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black87,
                  minimumSize: Size(80, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
