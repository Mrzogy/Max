import 'package:flutter/material.dart';

class Pointinfo extends StatelessWidget {
  const Pointinfo({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(
          Icons.circle,
          color: Colors.white,
          size: 12,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          title,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.w100),
        ),
      ],
    );
  }
}
