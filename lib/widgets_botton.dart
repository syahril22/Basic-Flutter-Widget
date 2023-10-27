import 'package:flutter/material.dart';

class ButtonWidgetsPage extends StatefulWidget {
  const ButtonWidgetsPage({super.key});

  @override
  State<ButtonWidgetsPage> createState() => _ButtoWidgetsnPageState();
}

class _ButtoWidgetsnPageState extends State<ButtonWidgetsPage> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Macam-Macam Widgets Button'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // elevent button
              ElevatedButton(
                  onPressed: () {}, child: const Text("ElevenButton")),
              // text button
              TextButton(onPressed: () {}, child: const Text("Text Button")),
              // outline button
              OutlinedButton(
                  onPressed: () {}, child: const Text("Outline Button")),
              // icon button
              IconButton(onPressed: () {}, icon: const Icon(Icons.volume_up)),
              // dropdown button
              DropdownButton(
                  items: const <DropdownMenuItem<String>>[
                    DropdownMenuItem<String>(
                      value: "Laki-Laki",
                      child: Text("Laki-Laki"),
                    ),
                    DropdownMenuItem<String>(
                      value: "Perempuan",
                      child: Text("Perempuan"),
                    ),
                  ],
                  value: gender,
                  hint: const Text("Select Gender"),
                  onChanged: (String? value) {
                    setState(() {
                      gender = value;
                    });
                  })
            ],
          ),
        ));
  }
}
