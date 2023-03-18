import 'package:flutter/material.dart';

Widget productTittile(
    String txt, double size, Color color, FontWeight fontWeight) {
  return Padding(
    padding: const EdgeInsets.only(
      top: 30,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          txt,
          style: TextStyle(
            color: color,
            fontWeight: fontWeight,
            fontSize: size,
          ),
        ),
      ],
    ),
  );
}
