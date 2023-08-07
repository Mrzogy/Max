import 'package:flutter/material.dart';

class Saveup extends StatelessWidget {
  const Saveup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 30,
      decoration: const BoxDecoration(
        color: Color(0xff3651ea),
      ),
      child: const Padding(
        padding: EdgeInsets.only(top: 5),
        child: Text(
          "Save up to 20%",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}