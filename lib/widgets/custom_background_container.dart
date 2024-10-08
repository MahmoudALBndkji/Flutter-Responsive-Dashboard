import 'package:flutter/material.dart';

class CustomBackgroundContainer extends StatelessWidget {
  const CustomBackgroundContainer({
    super.key,
    this.padding,
    required this.child,
  });
  final Widget child;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding ?? 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: child,
    );
  }
}
