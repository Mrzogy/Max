import 'package:flutter/material.dart';

class Mounthleysalary extends StatelessWidget {
  const Mounthleysalary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 50,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(20)),
      child: const Align(
        alignment: Alignment.center,
        child: Text(
          "Yearly",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}