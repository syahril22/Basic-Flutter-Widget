import 'package:flutter/material.dart';
import 'package:flutter_pemula/Navigator/pagetwo.dart';

class NavigatorPageHome extends StatelessWidget {
  const NavigatorPageHome({super.key});

  final String message = "Hello form Home Page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Usage Navigator"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PageTwo(message)));
            },
            child: const Text("Pindah Screen")),
      ),
    );
  }
}
