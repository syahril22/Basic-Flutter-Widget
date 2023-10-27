import 'package:flutter/material.dart';
import 'package:flutter_pemula/detail_screen.dart';

class AppFirst extends StatelessWidget {
  const AppFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Wisata Bandung",
      theme: ThemeData(),
      home: const DetailScreen(),
    );
  }
}
