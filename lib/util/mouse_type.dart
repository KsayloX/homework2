import 'package:flutter/material.dart';

class MouseType extends StatelessWidget {
  final String mouseType;
  final bool isSelected;
  final VoidCallback onTap;

  const MouseType({required this.mouseType,
    required this.isSelected,
    required this.onTap,
    super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Text(
          mouseType,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.green : Colors.white),
        ),
      ),
    );
  }
}
