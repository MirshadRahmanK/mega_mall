

import 'package:flutter/material.dart';
import 'package:shopeee/Screens/Product%20View%20Screen/productViewScreen.dart';

Widget homeIcons(String txt, BuildContext context) {
  return GestureDetector(
    onTap: () =>
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return const ProductViewScreen();
    })),
    child: Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: const BoxDecoration(
              color: Colors.lightGreen,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: const Center(
            child: Icon(Icons.headphones),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(txt),
        )
      ],
    ),
  );
}
