
import 'package:flutter/material.dart';

void main() {
  runApp(const ReelOnApp());
}

class ReelOnApp extends StatelessWidget {
  const ReelOnApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Text(
            'ReelOn App',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
      ),
    );
  }
}
