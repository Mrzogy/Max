import 'package:flutter/material.dart';

class Background_color extends StatelessWidget {
  const Background_color({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          width: 500,
          height: 930,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xff131b4f),
                Color(0xff121021),
              ],
            ),
          )),
    );
  }
}
