import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  final String message;
  const PageTwo(this.message, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Two"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Data Dari Home Page : $message"),
            SizedBox(
              height: 10,
            ),
            OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Back to Home"))
          ],
        ),
      ),
    );
  }
}
