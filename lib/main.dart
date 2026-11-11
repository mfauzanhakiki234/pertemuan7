import 'package:flutter/material.dart';
import 'counter_display.dart';
import 'counter_buttons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Counter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    // Menampilkan log lifecycle saat widget pertama dipasang
    print("Counter dimulai");
  }

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    // Validasi agar nilai tidak minus
    if (_counter > 0) {
      setState(() {
        _counter--;
      });
    }
  }

  void _reset() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('T7. Aplikasi Counter Fitur Tambahan'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Passing data variabel _counter ke child widget
            CounterDisplay(count: _counter),
            const SizedBox(height: 32),
            // Passing callback function ke child widget
            CounterButtons(
              onAdd: _increment,
              onSubtract: _decrement,
              onReset: _reset,
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Menampilkan log lifecycle saat widget dihapus dari memori
    print("Counter ditutup");
    super.dispose();
  }
}