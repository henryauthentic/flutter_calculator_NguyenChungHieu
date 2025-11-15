import 'package:flutter/material.dart';

class CalculatorDisplay extends StatelessWidget {
  final String value;

  const CalculatorDisplay({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
return Align(
      alignment: Alignment.bottomRight, // Căn lề dưới cùng, bên phải
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        child: Text(
          value,
          key: ValueKey(value),
          style: const TextStyle(fontSize: 48, color: Colors.white),
          textAlign: TextAlign.right,
        ),
      ),
    );
  }
}
