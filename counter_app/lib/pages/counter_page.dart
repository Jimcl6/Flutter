import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  // variable
  int _counter = 0;

  // method
  void _incrementCounter() {
    // setstate - this rebuild the widget.
    setState(() {
      _counter++;
    });
  }
  // UI

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You pushed the button this many times.'),
            Text(
              _counter.toString(),
              style: const TextStyle(fontSize: 30.0),
            ),
            ElevatedButton(
                onPressed: _incrementCounter, child: const Text("Increment"))
          ],
        ),
      ),
    );
  }
}
