import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  List<int> numbers = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Click Count",
                style: TextStyle(fontSize: 30),
              ),
              Column(
                children: numbers.map((element) {
                  return Text(
                    "$element",
                    style: const TextStyle(fontSize: 30),
                  );
                }).toList(),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    numbers.add(numbers.length);
                  });
                },
                icon: const Icon(Icons.add_box, size: 50),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
