import 'dart:convert';

ProductModel productModelFromJson(String str) =>
    ProductModel.fromJson(json.decode(str));
class ProductModel {
  ProductModel({
    this.status,
    this.msg,
    this.poroductId,
    this.title,
    this.price,
    this.imageUrl,
    this.description,
  });

  bool? status;
  String? msg;
  String? poroductId;
  String? title;
  int? price;
  String? imageUrl;
  String? description;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        status: json["status"],
        msg: json["msg"],
        poroductId: json["poroduct_id"],
        title: json["title"],
        price: json["price"],
        imageUrl: json["imageUrl"],
        description: json["description"],
      );
}
