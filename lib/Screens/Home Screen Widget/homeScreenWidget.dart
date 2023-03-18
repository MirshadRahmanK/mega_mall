import 'package:flutter/material.dart';
import 'package:shopeee/Designs/tittleText.dart';
import 'package:shopeee/Widget/Custom%20Text/customTxt.dart';
import 'package:shopeee/Widget/Home%20Icons/homeIcon.dart';
import '../../Vars/color.dart';
import '../../Vars/controllers.dart';
import '../../Widget/Search Bar/searchBar.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  List<dynamic> categoryList = [
    'Category 1',
    'Category 2',
    'Category 3',
    'Category 4',
    'Category 5',
    'Category 6',
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: appbarColor,
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: appbarColor,
        title: tittleText(),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.notifications_none_sharp,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.badge,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
            searchBar('Search Product Name', searchController),
            const SizedBox(
              height: 20,
            ),
            customTxt("All Categories"),
           const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: homeIcons(categoryList[0],context),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: homeIcons(categoryList[1],context),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: homeIcons(categoryList[2],context),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: homeIcons(categoryList[3],context),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: homeIcons(categoryList[4],context),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: homeIcons(categoryList[5],context),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
