import 'package:flutter/material.dart';

class ButtonNavigationBar extends StatelessWidget {
  const ButtonNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('bottonNavigationBar'),
        centerTitle: true,
      ),

      // implementasi properti bottonNavigatorBar
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), label: "Business"),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: "Scholl")
        ],
        currentIndex: 0,
        onTap: (int index) {
          if (index == 0) {
          } else if (index == 1) {
          } else if (index == 2) {}
        },
      ),
    );
  }
}
