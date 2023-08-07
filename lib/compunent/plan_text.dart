import 'package:flutter/material.dart';

class Plantext extends StatelessWidget {
  const Plantext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.topCenter,
      child: Text(
        'Choose Your Plan',
        maxLines: 3,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}