import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shopeee/Designs/tittleText.dart';
import 'package:shopeee/Vars/strings.dart';

import '../Home Screen/HomeScreen.dart';
import '../Home Screen Widget/homeScreenWidget.dart';

class SplasgScreen extends StatelessWidget {
  const SplasgScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context)
                .pushReplacement(MaterialPageRoute(builder: (context) {
              return HomeScreen();
            })));
    return Scaffold(
      body: Center(
        child: tittleText(),
      ),
    );
  }
}
