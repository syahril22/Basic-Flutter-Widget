import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Decoration Pada Container"),
      ),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.black, width: 5),
              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(
                  color: Colors.red,
                  offset: Offset(2, 6),
                  blurRadius: 10,
                ),
              ]
              // shape: BoxShape.circle,
              ),
          child: const Center(child: Text("Container")),
        ),
      ),
    );
  }
}
