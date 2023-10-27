import 'package:flutter/material.dart';

class PaddingPage extends StatelessWidget {
  const PaddingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget Padding"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 110, vertical: 50),
        child: Container(
          height: 100,
          width: 100,
          decoration: const BoxDecoration(color: Colors.black),
          child: const Center(
            child: Text(
              "hello",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
