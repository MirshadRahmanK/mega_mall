import 'package:flutter/material.dart';

import '../../Vars/color.dart';

Widget searchBar(String txt,TextEditingController textEditingController) {
  return Container(
    height: 60,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), color: searchBarColor),
    child: Row(
      children: [
        Expanded(
          child: TextField(
            controller: textEditingController,
            decoration: InputDecoration(
              hintText: txt,
              hintStyle: const TextStyle(fontSize: 15),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            ),
          ),
        ),
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            // Implement search functionality here
          },
        ),
      ],
    ),
  );
}
