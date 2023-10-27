import 'package:flutter/material.dart';
import 'package:flutter_pemula/Expanded.dart';
import 'package:flutter_pemula/Navigator/homepage.dart';
import 'package:flutter_pemula/app_first.dart';
import 'package:flutter_pemula/button_navigation_bar.dart';
import 'package:flutter_pemula/container.dart';
import 'package:flutter_pemula/drawer_page.dart';
import 'package:flutter_pemula/flexible_widget.dart';
import 'package:flutter_pemula/fonts.dart';
import 'package:flutter_pemula/images_widgtes.dart';
import 'package:flutter_pemula/input_widgets.dart';
import 'package:flutter_pemula/listview.dart';
import 'package:flutter_pemula/mediaQuery.dart';
import 'package:flutter_pemula/padding.dart';
import 'package:flutter_pemula/widgets_botton.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final heigtSpace = SizedBox(
      height: 20,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Pemula Dicoding"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              heigtSpace,
              ElevatedButton(
                onPressed: () {
                  final route = MaterialPageRoute(
                      builder: (context) => ButtonNavigationBar());
                  Navigator.push(context, route);
                },
                child: const Text("properti scafold bottonNavigationBar"),
              ),
              heigtSpace,
              ElevatedButton(
                onPressed: () {
                  final route =
                      MaterialPageRoute(builder: (context) => DrawerPage());
                  Navigator.push(context, route);
                },
                child: const Text("properti scafold Drawer"),
              ),
              heigtSpace,
              ElevatedButton(
                onPressed: () {
                  final route =
                      MaterialPageRoute(builder: (context) => ContainerPage());
                  Navigator.push(context, route);
                },
                child: const Text("ini materi Widget container"),
              ),
              heigtSpace,
              ElevatedButton(
                onPressed: () {
                  final route =
                      MaterialPageRoute(builder: (context) => PaddingPage());
                  Navigator.push(context, route);
                },
                child: const Text("ini materi Widget Padding"),
              ),
              heigtSpace,
              ElevatedButton(
                onPressed: () {
                  final route = MaterialPageRoute(
                      builder: (context) => ButtonWidgetsPage());
                  Navigator.push(context, route);
                },
                child: const Text("Button"),
              ),
              heigtSpace,
              ElevatedButton(
                onPressed: () {
                  final route = MaterialPageRoute(
                      builder: (context) => InputWidgetsPage());
                  Navigator.push(context, route);
                },
                child: const Text("Widgets Input"),
              ),
              heigtSpace,
              ElevatedButton(
                onPressed: () {
                  final route = MaterialPageRoute(
                      builder: (context) => ImagesWidgetsPage());
                  Navigator.push(context, route);
                },
                child: const Text("Images"),
              ),
              heigtSpace,
              ElevatedButton(
                onPressed: () {
                  final route =
                      MaterialPageRoute(builder: (context) => FontsPage());
                  Navigator.push(context, route);
                },
                child: const Text("Fonts"),
              ),
              heigtSpace,
              ElevatedButton(
                onPressed: () {
                  final route =
                      MaterialPageRoute(builder: (context) => AppFirst());
                  Navigator.push(context, route);
                },
                child: const Text("App First"),
              ),
              heigtSpace,
              ElevatedButton(
                onPressed: () {
                  final route =
                      MaterialPageRoute(builder: (context) => ListViewPage());
                  Navigator.push(context, route);
                },
                child: const Text("ListView"),
              ),
              heigtSpace,
              ElevatedButton(
                onPressed: () {
                  final route = MaterialPageRoute(
                      builder: (context) => ExpandedWidgetPage());
                  Navigator.push(context, route);
                },
                child: const Text("Expanded"),
              ),
              heigtSpace,
              ElevatedButton(
                onPressed: () {
                  final route = MaterialPageRoute(
                      builder: (context) => FlexibleWidgetPage());
                  Navigator.push(context, route);
                },
                child: const Text("Flexible"),
              ),
              heigtSpace,
              ElevatedButton(
                onPressed: () {
                  final route = MaterialPageRoute(
                      builder: (context) => NavigatorPageHome());
                  Navigator.push(context, route);
                },
                child: const Text("Navigator"),
              ),
              heigtSpace,
              ElevatedButton(
                onPressed: () {
                  final route =
                      MaterialPageRoute(builder: (context) => MediaQueryPage());
                  Navigator.push(context, route);
                },
                child: const Text("MediaQuery"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
