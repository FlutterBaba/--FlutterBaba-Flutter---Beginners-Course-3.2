import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _value1 = false;
  bool _value2 = false;

  void _value1onChanged(bool? value) {
    setState(() {
      _value1 = value!;
    });
  }

  void _value2onChanged(bool? value) {
    setState(() {
      _value2 = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(Icons.show_chart),
        ],
        centerTitle: true,
        title: const Text("My App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(value: _value1, onChanged: _value1onChanged),
            CheckboxListTile(
              value: _value2,
              title: const Text("My App"),
              subtitle: const Text("new app"),
              secondary: const Icon(Icons.architecture),
              onChanged: _value2onChanged,
              activeColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
