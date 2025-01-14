import 'dart:math';
import 'package:flutter/material.dart';

class ProcrastinationScreen extends StatefulWidget {
  const ProcrastinationScreen({super.key});

  @override
  State<ProcrastinationScreen> createState() => _ProcrastinationScreenState();
}

class _ProcrastinationScreenState extends State<ProcrastinationScreen>
    with SingleTickerProviderStateMixin {
  // Random messages
  final List<String> messages = [
    "Kal krta hu bhai",
    "Not today",
    "Chai pila do pehle",
    "Mai naazuk kali hu, handle with care",
    "Abhi sone jaara hu",
  ];

  String currentMessage = "Press this Button!";
  double buttonScale = 1.0; // To animate scaling of the button

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
        title: const Center(
          child: Text(
            "Procrastination App",
            style: TextStyle(color: Colors.white60),
          ),
        ),
        backgroundColor: Colors.black87,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                currentMessage,
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.white60,
                ),
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTapDown: (_) {
                // Scale down the button when pressed
                setState(() {
                  buttonScale = 0.5;
                });
              },
              onTapUp: (_) {
                // Reset the scale and trigger the random message
                setState(() {
                  buttonScale = 1.0;
                });
                showRandomMessage();
              },
              onTapCancel: () {
                // Reset the scale if the tap is canceled
                setState(() {
                  buttonScale = 1.0;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeOut,
                transform: Matrix4.identity()..scale(buttonScale),
                width: 200,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(30), // Rounded corners
                ),
                alignment: Alignment.center,
                child: const Text(
                  'SUBMIT',
                  style: TextStyle(
                    fontSize: 28,
                    letterSpacing: 5,
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
