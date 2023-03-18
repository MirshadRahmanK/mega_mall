import 'package:flutter/material.dart';

Widget customTxt(String txt) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        txt,
        style: const TextStyle(
            color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
      ),
    ],
  );
}
