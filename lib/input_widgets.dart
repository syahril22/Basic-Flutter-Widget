import 'package:flutter/material.dart';

class InputWidgetsPage extends StatefulWidget {
  const InputWidgetsPage({super.key});

  @override
  State<InputWidgetsPage> createState() => _InputWidgetsPageState();
}

class _InputWidgetsPageState extends State<InputWidgetsPage> {
  String _name = "";
  bool lightOn = false;
  String? language;
  bool agree = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Widgets"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // usage widget input textfield start
            TextField(
              decoration: const InputDecoration(
                  hintText: "Write your name here", labelText: "your name"),
              onChanged: (value) {
                setState(() {
                  _name = value;
                });
              },
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text("Good Morning $_name"),
                        );
                      });
                });
              },
              child: const Text("Submit"),
            ),
            // usage widget input textfield end
            const SizedBox(
              height: 50,
            ),
            // usage widget switch start
            Switch(
              value: lightOn,
              onChanged: (value) {
                setState(() {
                  lightOn = value;
                });

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(lightOn ? "Light On" : "ligh Of"),
                    duration: const Duration(seconds: 1),
                  ),
                );
              },
            ),
            // usage widget switch end
            const SizedBox(
              height: 30,
            ),
            // usage widget input Radio start
            Column(
              children: [
                ListTile(
                  leading: Radio<String>(
                    groupValue: language,
                    value: "Dart",
                    onChanged: (value) {
                      setState(() {
                        language = value;
                        showSnackBar();
                      });
                    },
                  ),
                  title: const Text("Dart"),
                ),
                ListTile(
                  leading: Radio<String>(
                    groupValue: language,
                    value: "Kotlin",
                    onChanged: (value) {
                      setState(() {
                        language = value;
                        showSnackBar();
                      });
                    },
                  ),
                  title: const Text("Kotlin"),
                )
              ],
            ),
            // usage widget input Radio start
            const SizedBox(
              height: 30,
            ),
            // usage widget input CheckBox start
            Column(
              children: [
                ListTile(
                  leading: Checkbox(
                    value: agree,
                    onChanged: (value) {
                      setState(() {
                        agree = value!;
                      });
                    },
                  ),
                  title: const Text('Agree / Disagree'),
                )
              ],
            ),
            // usage widget input CheckBox end
          ],
        ),
      ),
    );
  }

  void showSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("$language selected"),
        duration: const Duration(seconds: 2),
      ),
    );
  }
}
