import 'package:flutter/material.dart';
import 'package:max_app/compunent/point_info.dart';

class PayCard2 extends StatelessWidget {
  const PayCard2({
    super.key,
    required this.title,
    required this.salarytitle,
    required this.pointinfo1,
    required this.pointinfo2,
    required this.pointinfo3,
  });
  final String title;
  final String salarytitle;
  final String pointinfo1;
  final String pointinfo2;
  final String pointinfo3;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 250,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xff131b4f),
            Color(0xff121021),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              title,
              style: const TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  salarytitle,
                  style: const TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "/year",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w100),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Pointinfo(
                title: pointinfo1,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Pointinfo(
                title: pointinfo2,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Pointinfo(
                title: pointinfo3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}