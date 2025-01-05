import 'dart:math';
import 'package:flutter/material.dart';

class ProcrastinationScreen extends StatefulWidget {
  const ProcrastinationScreen({super.key});

  @override
  State<ProcrastinationScreen> createState() => _ProcrastinationScreenState();
}

class _ProcrastinationScreenState extends State<ProcrastinationScreen> {
  //random messages

  final List<String> messages = [
    "Kal krta hu bhai",
    "Not today",
    "Chai pila do pehle",
    "Mai naazuk kali hu, handle with care",
    "Abhi sone jaara hu",
  ];

  String currentMessage = "Press this Button!";

  void showRandomMessage() {
    setState(() {
      currentMessage = messages[Random().nextInt(messages.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Center(
          child: Text(
            "Procratination App",
            style: TextStyle(color: Colors.white60),
          ),
        ),
        backgroundColor: Colors.black12,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentMessage,
              style: TextStyle(
                fontSize: 40,
                color: Colors.white60
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: showRandomMessage,
              child: Text(
                "Press to do something",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
