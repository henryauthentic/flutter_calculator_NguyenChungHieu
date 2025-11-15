import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color? color;
  final bool accent;

  const CalcButton({
    super.key,
    required this.text,
    required this.onTap,
    this.color,
    this.accent = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        width: 94.5, // theo yêu cầu
        height: 94.5, // theo yêu cầu
        duration: const Duration(milliseconds: 150),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(100), // bo tròn nút
        ),
        alignment: Alignment.center,
        //padding: const EdgeInsets.symmetric(
          //vertical: 18, // theo yêu cầu
        //  horizontal: 33, // theo yêu cầu
        //),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 26, // to hơn cho cân nút
            fontWeight: accent ? FontWeight.bold : FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
