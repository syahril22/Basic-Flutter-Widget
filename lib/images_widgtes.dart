import 'package:flutter/material.dart';

class ImagesWidgetsPage extends StatelessWidget {
  const ImagesWidgetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Usage Images to Url and Assets"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                const Text("Images With Url"),
                const SizedBox(
                  height: 5,
                ),
                Image.network(
                  "https://images.pexels.com/photos/12056650/pexels-photo-12056650.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
                  height: 100,
                  width: 100,
                ),
              ],
            ),
            Column(
              children: [
                const Text("Images With Asset Lokal"),
                const SizedBox(
                  height: 5,
                ),
                Image.asset(
                  "images/android.png",
                  width: 100,
                  height: 100,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
