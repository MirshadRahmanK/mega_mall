import 'package:flutter/material.dart';

import '../Vars/color.dart';
import '../Vars/strings.dart';

Widget tittleText() {
  return Text(
    appTittle,
    style: TextStyle(color: tittleColor, fontWeight: FontWeight.bold),
  );
}
