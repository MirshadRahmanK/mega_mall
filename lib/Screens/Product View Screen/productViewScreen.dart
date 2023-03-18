import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shopeee/Networking/Product%20Model/productModel.dart';
import 'package:shopeee/Vars/color.dart';
import 'package:http/http.dart' as http;
import 'package:shopeee/Widget/Product%20Tittle/productTittle.dart';

import '../../Vars/Url/endPoind.dart';

class ProductViewScreen extends StatefulWidget {
  const ProductViewScreen({super.key});

  @override
  State<ProductViewScreen> createState() => _ProductViewScreenState();
}

class _ProductViewScreenState extends State<ProductViewScreen> {
  ProductModel productModel = ProductModel();
  bool _load = false;
  getDatas() async {
    var url = Uri.parse(productUrl);
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      productModel = ProductModel.fromJson(json);
      setState(() {
        _load = true;
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDatas();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(
            Icons.forward,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.badge,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          ),
        ],
        backgroundColor: appbarColor,
        elevation: 0.5,
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.black,
            )),
        title: const Text(
          'Detail Product',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: _load
          ? Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CachedNetworkImage(
                      height: 250,
                      imageUrl: productModel.imageUrl!,
                      placeholder: (context, url) => Container(),
                    ),
                    productTittile(
                        productModel.title!, 20, Colors.black, FontWeight.bold),
                    productTittile('Rp ${productModel.price}', 15, Colors.red, FontWeight.w500),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 10,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('4.6'),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Reviews')
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                  color: Colors.lime,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: const Center(
                                child: Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    'Tresdia:250',
                                    style: TextStyle(color: Colors.green),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      thickness: 0.1,
                      color: Colors.black,
                    ),
                    productTittile('Description Product', 15, Colors.black,
                        FontWeight.bold),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      productModel.description!,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
