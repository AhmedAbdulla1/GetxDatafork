import 'package:get/get.dart';
import 'package:sec_it_developers_getx_course/Model/Modelling.dart';
import 'package:flutter/services.dart';
import 'package:sec_it_developers_getx_course/Services/Service.dart';

class ProductController extends GetxController {
  var IsLoading = true.obs;
  var product;
  void Fetchproduct() async {
    try {
      //check isloading null? -> await ll data
      IsLoading(true);
      product = await DataService.fetchProduct();
      print(product);
    } finally {
      IsLoading(false);
    }
  }
}
