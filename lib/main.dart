import 'package:flutter/material.dart';
import 'package:procrastination_app/procrastination_screen.dart';

void main() {
  runApp(Procrastination());
}

class Procrastination extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: ProcrastinationScreen(),
    ));
  }
}
