import 'package:flutter/material.dart';

class PlanTextDescription extends StatelessWidget {
  const PlanTextDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Stream hit movies, fresh originals, and\n family favorites',
      maxLines: 2,
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 20, color: Colors.white, fontWeight: FontWeight.w100),
    );
  }
}