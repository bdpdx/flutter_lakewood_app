import 'package:flutter/material.dart';

class Bordered extends StatelessWidget {
  final Widget child;
  final Color color;
  final double width;

  const Bordered({
    super.key,
    this.color = Colors.blue,
    this.width = 1.0,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: color, width: width),
      ),
      child: child,
    );
  }
}
