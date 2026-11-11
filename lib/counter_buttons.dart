import 'package:flutter/material.dart';

class CounterButtons extends StatelessWidget {
  final VoidCallback onAdd;
  final VoidCallback onSubtract;
  final VoidCallback onReset;

  const CounterButtons({
    Key? key,
    required this.onAdd,
    required this.onSubtract,
    required this.onReset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: onSubtract,
              icon: const Icon(Icons.remove),
              label: const Text("Kurang"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
            ),
            const SizedBox(width: 16),
            ElevatedButton.icon(
              onPressed: onAdd,
              icon: const Icon(Icons.add),
              label: const Text("Tambah"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            ),
          ],
        ),
        const SizedBox(height: 12),
        OutlinedButton.icon(
          onPressed: onReset,
          icon: const Icon(Icons.refresh),
          label: const Text("Reset"),
        ),
      ],
    );
  }
}