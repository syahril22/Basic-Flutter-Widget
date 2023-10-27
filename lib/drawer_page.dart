import 'package:flutter/material.dart';
import 'package:flutter_pemula/main.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Properti Drawer"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: Text("Drawer Header"),
            ),
            ListTile(
              title: const Row(
                children: [
                  Icon(Icons.home),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Home")
                ],
              ),
              onTap: () {
                final route =
                    MaterialPageRoute(builder: (context) => HomePage());
                Navigator.push(context, route);
              },
            ),
            ListTile(
              title: const Row(
                children: [
                  Icon(Icons.settings),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Settings")
                ],
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
