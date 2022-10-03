import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:sec_it_developers_getx_course/Model/Modelling.dart';

var injectionOfModule = Get.put(ProductList);

class DataService {
  static var Client = http.Client();
  static Future<List> fetchProduct() async {
    var response = await Client.get(Uri.parse(
        "https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline"));
    var JsonResponse = response.body;
    if (response.statusCode == 200) {
      productListFromJson(JsonResponse);
    } else {
      print("Connection is not successful");
    }
    return productListFromJson(JsonResponse);
    // 8alban dah error
  }
}
