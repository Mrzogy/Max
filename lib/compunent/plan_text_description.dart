import 'package:flutter/material.dart';

class PlanTextDescription extends StatelessWidget {
  const PlanTextDescription({
    super.key, required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return  Text(
      title,
      maxLines: 2,
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 20, color: Colors.white, fontWeight: FontWeight.w100),
    );
  }
}
